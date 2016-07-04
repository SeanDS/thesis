function export_total_power_vs_darm_offset(filename, darmOffsets, varargin)
    %% Paths
    
    % this script's directory
    directory = fileparts(mfilename('fullpath'));
    
    % useful functions
    addpath(genpath([directory, '/../']));

    %% Calculate
    
    [titles, powers] = calculate_total_power_vs_darm_offset(darmOffsets, varargin{:});
    
    %% Export
    
    exporter = DataExporter();
    exporter.data = [darmOffsets', powers];
    exporter.dataheaders = [{'DARM offset (m)'}, titles];

    exporter.exportCsv(filename, varargin{:});
end