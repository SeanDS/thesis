function [titles, powers] = calculate_sideband_powers_vs_src_length(lengths, varargin)
    %% Paths
    
    % this script's directory
    directory = fileparts(mfilename('fullpath'));
    
    % useful functions
    addpath(genpath([directory, '/../']));

    %% Model and parameters
    
    % parse input arguments
    args = simInputParser(varargin{:});

    % get parameter set
    par = par_et_lf(varargin{:});
    
    % override DARM offset
    EX = par.mirror('EX');
    EX.pos = 0;
    par.mirror('EX') = EX;
    EY = par.mirror('EY');
    EY.pos = 0;
    par.mirror('EY') = EY;
    
    % get frequency vector
    f = getFrequencyVectorFromInput(args);

    % get Optickle model for ET-LF
    opt = opt_et_lf(par);

    % add probes
    opt = prb_et_lf(opt, par);
    
    sn_PRC = opt.getLinkNum('BS', 'PRF');
    sn_SRC = opt.getLinkNum('SR', 'BS');
    
    snBStoSR = getFieldIn(opt, 'SR', 'fr');
    snSRtoBS = getFieldOut(opt, 'SR', 'fr');

    % empty results matrix
    lastResult = length(lengths);
    
    powers = zeros(lastResult, 2 * length(opt.vFrf));
    
    titles = [cellstr(num2str(opt.vFrf, 'PRC %-d (W)')); cellstr(num2str(opt.vFrf, 'SRC %-d (W)'))]';
    
    for i = 1 : length(lengths)
        fprintf('Iteration %d/%d\n', i, lastResult);
        
        % set SRCL
        opt.setLinkLength(snBStoSR, lengths(i));
        opt.setLinkLength(snSRtoBS, lengths(i));
    
        % tickle system to get DC
        fDC = opt.tickle();
        
        % put results into matrix
        powers(i, :) = [abs(fDC(sn_PRC, :)) .^ 2, abs(fDC(sn_SRC, :)) .^ 2];
    end
end