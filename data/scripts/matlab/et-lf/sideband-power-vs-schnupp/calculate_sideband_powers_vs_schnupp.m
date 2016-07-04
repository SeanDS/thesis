function [titles, powers] = calculate_sideband_powers_vs_schnupp(lSchnupp, varargin)
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
    
    snBStoIX = getFieldIn(opt, 'IX', 'bk');
    snIXtoBS = getFieldOut(opt, 'IX', 'bk');
    snBStoIY = getFieldIn(opt, 'IY', 'bk');
    snIYtoBS = getFieldOut(opt, 'IY', 'bk');
    
    % average distance to ITMs from BS
    lmean = (par.distances.BStoIX + par.distances.BStoIY) / 2;

    % empty results matrix
    lastResult = length(lSchnupp);
    
    powers = zeros(lastResult, 2 * length(opt.vFrf));
    
    titles = [cellstr(num2str(opt.vFrf, 'PRC %-d (W)')); cellstr(num2str(opt.vFrf, 'SRC %-d (W)'))]';
    
    for i = 1 : length(lSchnupp)
        fprintf('Iteration %d/%d\n', i, lastResult);
        
        % set link lengths between BS and IX/IY
        opt.setLinkLength(snBStoIX, lmean + lSchnupp(i) / 2);
        opt.setLinkLength(snIXtoBS, lmean + lSchnupp(i) / 2);
        opt.setLinkLength(snBStoIY, lmean - lSchnupp(i) / 2);
        opt.setLinkLength(snIYtoBS, lmean - lSchnupp(i) / 2);
    
        % tickle system to get DC
        fDC = opt.tickle();
        
        % put results into matrix
        powers(i, :) = [abs(fDC(sn_PRC, :)) .^ 2, abs(fDC(sn_SRC, :)) .^ 2];
    end
end