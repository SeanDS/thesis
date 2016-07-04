% Script to calculate a PRCL sweep for ET-LF in detuned mode.
%
% Sean Leavey
% July 2016

function create_et_lf_sweep_prcl_detuned(filename, range, points)
    % this script's directory
    directory = fileparts(mfilename('fullpath'));

    % add ET scripts to path
    addpath(genpath([directory, '/et-lf']));

    % export data
    export_prcl_sweep(filename, range, points, 'python', true);
end