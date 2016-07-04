% Script to calculate a DARM sweep for ET-LF in detuned mode.
%
% Sean Leavey
% July 2016

function create_et_lf_sweep_darm_detuned(filename, range, points)
    % this script's directory
    directory = fileparts(mfilename('fullpath'));

    % add ET scripts to path
    addpath(genpath([directory, '/et-lf']));

    % export data
    export_darm_sweep(filename, range, points, 'python', true);
end