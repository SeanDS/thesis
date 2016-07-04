function export_carm_sweep(filename, range, points, varargin)
    %% Paths
    
    % this script's directory
    directory = fileparts(mfilename('fullpath'));
    
    % useful functions
    addpath(genpath([directory, '/../']));
    
    %% Sweeps
    
    sensorA = 'REFL_11_I';
    sensorB = 'REFL_11_Q';

    % readouts chosen from the control matrix
    [positionsA, signalsA] = get_error_signal_sweep('CARM', sensorA, range, points, varargin{:});
    [         ~, signalsB] = get_error_signal_sweep('CARM', sensorB, range, points, varargin{:});
    
    %% Export
    
    exporter = DataExporter();
    exporter.data = [positionsA', signalsA', signalsB'];
    exporter.dataheaders = {'Position [m]', sensorA, sensorB};

    exporter.exportCsv(filename, varargin{:});
end