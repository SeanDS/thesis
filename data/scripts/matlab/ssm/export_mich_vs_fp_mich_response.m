function export_mich_vs_fp_mich_response(filename, frequencies, varargin)
    %% Paths
    
    % this script's directory
    directory = fileparts(mfilename('fullpath'));
    
    % add subdirectories
    addpath(genpath(directory));
    
    %% Get models
    
    % simple Michelson
    [f, response_mich] = calculate_mich_darm_response(frequencies);
    
    % Fabry-Perot Michelson
    [~, response_fp_mich] = calculate_fp_mich_darm_response(frequencies);
    
    %% Export
    
    exporter = DataExporter();
    exporter.data = [f', response_mich, response_fp_mich];
    exporter.dataheaders = {'Frequency (Hz)', 'Michelson response', 'Fabry-Perot Michelson response'};

    exporter.exportCsv(filename, varargin{:});
end