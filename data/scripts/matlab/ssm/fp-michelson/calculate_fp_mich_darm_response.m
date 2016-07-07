function [f, tf_darm] = calculate_fp_mich_darm_response(varargin)   
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
    [~, sigDC, sigAC] = opt.tickle([], f);
    showsigDC(opt, sigDC);
    
    % response from EX to AS
    tf_ex = getTF(sigAC, opt.getProbeNum('AS_DC'), opt.getDriveNum('EX'));
    
    % response from EY to AS
    tf_ey = getTF(sigAC, opt.getProbeNum('AS_DC'), opt.getDriveNum('EY'));
    
    % DARM response
    tf_darm = (tf_ex - tf_ey) / 2;
end

