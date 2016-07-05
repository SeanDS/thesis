function print_dc_powers_detuned()
    %% Paths
    
    % this script's directory
    directory = fileparts(mfilename('fullpath'));

    % useful functions
    addpath(genpath([directory, '/../']));
    
    %% Model
    opt = get_opt_at_operating_point();
    
    %% DC fields
    fDC = opt.tickle();
    
    showfDC(opt, fDC);
end