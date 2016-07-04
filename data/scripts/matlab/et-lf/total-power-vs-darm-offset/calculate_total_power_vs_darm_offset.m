function [titles, powers] = calculate_total_power_vs_darm_offset(darmOffsets, varargin)
    %% Paths
    
    % this script's directory
    directory = fileparts(mfilename('fullpath'));
    
    % useful functions
    addpath(genpath([directory, '/../']));

    %% Model and parameters

    % get parameter set
    par = par_et_lf(varargin{:});

    % get Optickle model for ET-LF
    opt = opt_et_lf(par);

    % add probes
    opt = prb_et_lf(opt, par);
    
    snAS = opt.getLinkNum('SR', 'AS');
    snArmX = opt.getLinkNum('IX', 'EX');
    snArmY = opt.getLinkNum('IY', 'EY');

    % empty results matrix
    lastResult = length(darmOffsets);
    
    powers = zeros(lastResult, 3 * length(opt.vFrf) + 1);
    
    titles = [cellstr(num2str(opt.vFrf, 'AS  X %-d (W)')); cellstr(num2str(opt.vFrf, 'Arm X %-d (W)')); cellstr(num2str(opt.vFrf, 'Arm Y %-d (W)')); 'AS total (W)']';
    
    for i = 1 : lastResult
        fprintf('Iteration %d/%d\n', i, lastResult);
        
        % set DARM offset
        opt.setPosOffset('EX', darmOffsets(i) / 2);
        opt.setPosOffset('EY', -darmOffsets(i) / 2);
    
        % tickle system to get DC
        fDC = opt.tickle();
        
        % put results into matrix
        totalAS = sum(abs(fDC(snAS, :)) .^ 2);
        powers(i, :) = [abs(fDC(snAS, :)) .^ 2, abs(fDC(snArmX, :)) .^ 2, abs(fDC(snArmY, :)) .^ 2, totalAS];
    end
end