function export_sideband_power_vs_frequency(filename, frequencies, varargin)
    %% Paths
    
    % this script's directory
    directory = fileparts(mfilename('fullpath'));
    
    % useful functions
    addpath(genpath([directory, '/../']));

    %% Calculate
    
    [titles, powers] = calculate_sideband_powers_vs_frequency(frequencies, varargin{:});
    
    %% Export
    
    exporter = DataExporter();
    exporter.data = [frequencies', powers];
    exporter.dataheaders = [{'Frequency'}, titles];

    exporter.exportCsv(filename, varargin{:});
end