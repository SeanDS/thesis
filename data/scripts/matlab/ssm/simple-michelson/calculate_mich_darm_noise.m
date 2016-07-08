function [f, noise] = calculate_mich_darm_noise(varargin)    
    %% Input

    if nargin < 1
        f = logspace(0, 4, 1000);
    else
        f = varargin{1};
    end
    
    %% Get model
    
    opt = opt_mich();
    
    %% Get noise
    
    % tickle
    [~, sigDC, ~, ~, noiseAC] = opt.tickle([], f);
    showsigDC(opt, sigDC);
    
    noise = noiseAC(opt.getProbeNum('AS_DC'), :);
end

