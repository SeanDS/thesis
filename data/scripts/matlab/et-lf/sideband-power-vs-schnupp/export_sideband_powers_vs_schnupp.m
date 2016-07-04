function export_sideband_powers_vs_schnupp(filename, lSchnupp, varargin)
    %% Paths
    
    % this script's directory
    directory = fileparts(mfilename('fullpath'));
    
    % data exporter
    addpath(genpath([directory, '/../../../lib/meta']));

    %% Calculate
    
    [titles, powers] = calculate_sideband_powers_vs_schnupp(lSchnupp, varargin{:});
    
    %% Export
    
    exporter = DataExporter();
    exporter.data = [lSchnupp', powers];
    exporter.dataheaders = [{'Schnupp length'}, titles];

    exporter.exportCsv(filename, varargin{:});
end