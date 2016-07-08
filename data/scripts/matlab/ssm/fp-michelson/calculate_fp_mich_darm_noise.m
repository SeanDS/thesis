function [f, noise] = calculate_fp_mich_darm_noise(varargin)   
    %% Input

    if nargin < 1
        f = logspace(0, 6, 1000);
    else
        f = varargin{1};
    end
    
    %% Get model
    
    opt = opt_fp_mich();
    
    %% Get response
    
    % tickle
    [~, sigDC, ~, ~, noiseAC] = opt.tickle([], f);
    showsigDC(opt, sigDC);
    
    noise = noiseAC(opt.getProbeNum('AS_DC'), :);
end

