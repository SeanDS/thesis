function export_darm_sweep(filename, range, points, varargin)
    %% Paths
    
    % this script's directory
    directory = fileparts(mfilename('fullpath'));
    
    % useful functions
    addpath(genpath([directory, '/../']));
    
    %% Sweeps
    
    sensor = 'AS_DC';

    % readouts chosen from the control matrix
    [positions, signals] = get_error_signal_sweep('DARM', sensor, range, points, varargin{:});
    
    %% Export
    
    exporter = DataExporter();
    exporter.data = [positions', signals'];
    exporter.dataheaders = {'Position [m]', sensor};

    exporter.exportCsv(filename, varargin{:});
end