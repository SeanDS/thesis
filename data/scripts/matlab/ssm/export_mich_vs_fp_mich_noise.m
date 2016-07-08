function export_mich_vs_fp_mich_noise(filename, frequencies, varargin)
    %% Paths
    
    % this script's directory
    directory = fileparts(mfilename('fullpath'));
    
    % add subdirectories
    addpath(genpath(directory));
    
    %% Get models
    
    % simple Michelson
    [f, noise_mich] = calculate_mich_darm_noise(frequencies);
    
    % Fabry-Perot Michelson
    [~, noise_fp_mich] = calculate_fp_mich_darm_noise(frequencies);
    
    %% Export
    
    exporter = DataExporter();
    exporter.data = [f', noise_mich', noise_fp_mich'];
    exporter.dataheaders = {'Frequency (Hz)', 'Michelson noise', 'Fabry-Perot Michelson noise'};

    exporter.exportCsv(filename, varargin{:});
end