% Script to calculate the DARM sensitivity of ET-LF at the operating point
% defined by the control scheme.
%
% Sean Leavey
% July 2016

function create_et_lf_sensitivity_detuned(filename, f)
    % this script's directory
    directory = fileparts(mfilename('fullpath'));

    % add ET scripts to path
    addpath(genpath([directory, '/et-lf']));

    % export data
    export_sensitivity(filename, 'tuning', 'detuned', 'python', true, 'f', f, 'useExistingFreqs', true);
end