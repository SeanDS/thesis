function export_reflected_power_vs_prm_trans(filename, prmTrans, varargin)
    %% Paths
    
    % this script's directory
    directory = fileparts(mfilename('fullpath'));
    
    % useful functions
    addpath(genpath([directory, '/../']));

    %% Calculate
    
    powers = calculate_reflected_power_vs_prm_trans(prmTrans, varargin{:});
    
    %% Export
    
    exporter = DataExporter();
    exporter.data = [prmTrans', powers];
    exporter.dataheaders = {'PRM transmissivity', 'Reflected power'};

    exporter.exportCsv(filename, varargin{:});
end