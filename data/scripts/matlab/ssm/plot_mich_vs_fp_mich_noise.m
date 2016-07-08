function plot_mich_vs_fp_mich_noise(varargin)    
    %% Paths
    
    % this script's directory
    directory = fileparts(mfilename('fullpath'));
    
    % add subdirectories
    addpath(genpath(directory));
    
    %% Get models
    
    % simple Michelson
    [f_mich, noise_mich] = calculate_mich_darm_noise(varargin{:});
    
    % Fabry-Perot Michelson
    [~, noise_fp_mich] = calculate_fp_mich_darm_noise(varargin{:});
    
    %% Plot
    
    figure;
    zplotlog(f_mich, [noise_mich; noise_fp_mich]);
end