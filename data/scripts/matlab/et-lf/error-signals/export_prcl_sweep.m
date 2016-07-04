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
    
    %% Export
    
    exporter = DataExporter();
    exporter.data = [positionsA', signalsA', signalsB'];
    exporter.dataheaders = {'Position [m]', sensorA, sensorB};

    exporter.exportCsv(filename, varargin{:});
end