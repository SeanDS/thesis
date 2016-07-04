function print_dc_powers_tuned()
    %% Paths
    
    % this script's directory
    directory = fileparts(mfilename('fullpath'));
    
    % useful functions
    addpath(genpath([directory, '/../']));
    
    %% Model
    opt = get_opt_at_operating_point('tuning', 'tuned', 'fRf2', 57.008e6)
    
    %% DC fields
    
    fDC = opt.tickle();
    
    showfDC(opt, fDC);
end