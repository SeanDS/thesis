% Script to calculate the powers in the recycling cavities of ET-LF in the
% detuned configuration for a given set of DARM offsets.
%
% Sean Leavey
% June 2016

function create_et_lf_total_power_vs_darm_offset_detuned(filename, darm_offsets)
    % this script's directory
    directory = fileparts(mfilename('fullpath'));

    % add ET scripts to path
    addpath(genpath([directory, '/et-lf']));

    % export data
    export_total_power_vs_darm_offset(filename, darm_offsets, 'tuning', 'detuned', 'python', true);
end