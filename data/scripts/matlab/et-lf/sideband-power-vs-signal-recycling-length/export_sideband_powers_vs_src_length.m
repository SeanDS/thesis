function export_sideband_power_vs_src_length(filename, lengths, varargin)
    %% Paths
    
    % this script's directory
    directory = fileparts(mfilename('fullpath'));
    
    % useful functions
    addpath(genpath([directory, '/../']));

    %% Calculate
    
    [titles, powers] = calculate_sideband_powers_vs_src_length(lengths, varargin{:});
    
    %% Export
    
    exporter = DataExporter();
    exporter.data = [lengths', powers];
    exporter.dataheaders = [{'Frequency'}, titles];

    exporter.exportCsv(filename, varargin{:});
end