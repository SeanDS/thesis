function plot_mich_vs_fp_mich_response(varargin)    
    %% Paths
    
    % this script's directory
    directory = fileparts(mfilename('fullpath'));
    
    % add subdirectories
    addpath(genpath(directory));
    
    %% Get models
    
    % simple Michelson
    [f_mich, response_mich] = calculate_mich_darm_response(varargin{:});
    
    % Fabry-Perot Michelson
    [~, response_fp_mich] = calculate_fp_mich_darm_response(varargin{:});
    
    %% Plot
    
    figure;
    zplotlog(f_mich, [response_mich, response_fp_mich]);
end