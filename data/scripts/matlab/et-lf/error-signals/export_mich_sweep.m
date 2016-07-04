function export_mich_sweep(filename, range, points, varargin)
    %% Paths
    
    % this script's directory
    directory = fileparts(mfilename('fullpath'));
    
    % useful functions
    addpath(genpath([directory, '/../']));
    
    %% Sweeps
    
    sensorA = 'POP_57_I';
    sensorB = 'POP_57_Q';

    % readouts chosen from the control matrix
    [positionsA, signalsA] = get_error_signal_sweep('MICH', sensorA, range, points, varargin{:});
    [         ~, signalsB] = get_error_signal_sweep('MICH', sensorB, range, points, varargin{:});
    
    %% Export
    
    exporter = DataExporter();
    exporter.data = [positionsA', signalsA', signalsB'];
    exporter.dataheaders = {'Position [m]', sensorA, sensorB};

    exporter.exportCsv(filename, varargin{:});
end