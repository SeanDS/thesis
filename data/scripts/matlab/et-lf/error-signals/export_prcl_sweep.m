function export_prcl_sweep(filename, range, points, varargin)
    %% Paths
    
    % this script's directory
    directory = fileparts(mfilename('fullpath'));
    
    % useful functions
    addpath(genpath([directory, '/../']));
    
    %% Sweeps
    
    sensorA = 'POP_11_I';
    sensorB = 'POP_11_Q';

    % readouts chosen from the control matrix
    [positionsA, signalsA] = get_error_signal_sweep('PRCL', sensorA, range, points, varargin{:});
    [         ~, signalsB] = get_error_signal_sweep('PRCL', sensorB, range, points, varargin{:});
    [         ~, signalsC] = get_error_signal_sweep('MICH', sensorA, range, points, varargin{:});
    [         ~, signalsD] = get_error_signal_sweep('MICH', sensorB, range, points, varargin{:});
    [         ~, signalsE] = get_error_signal_sweep('SRCL', sensorA, range, points, varargin{:});
    [         ~, signalsF] = get_error_signal_sweep('SRCL', sensorB, range, points, varargin{:});
    
    %% Export
    
    exporter = DataExporter();
    exporter.data = [positionsA', signalsA', signalsB', signalsC', signalsD', signalsE', signalsF'];
    exporter.dataheaders = {'Position [m]', ['PRCL ', sensorA], ['PRCL ', sensorB], ['MICH ', sensorA], ['MICH ', sensorB], ['SRCL ', sensorA], ['SRCL ', sensorB]};

    exporter.exportCsv(filename, varargin{:});
end