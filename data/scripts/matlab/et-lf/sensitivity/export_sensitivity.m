function export_sensitivity(filename, varargin)
    %% Paths
    
    % this script's directory
    directory = fileparts(mfilename('fullpath'));
    
    % useful functions
    addpath(genpath([directory, '/../']));

    %% Calculate
    
    [f, qnls] = calculate_sensitivity(varargin{:});
    
    %% Export
    
    exporter = DataExporter();
    exporter.data = [f; qnls]';
    exporter.dataheaders = {'Frequency [Hz]', 'Strain QNLS [1/sqrt(Hz)]'};

    exporter.exportCsv(filename, varargin{:});
end