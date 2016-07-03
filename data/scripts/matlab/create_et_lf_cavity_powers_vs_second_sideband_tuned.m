% Script to calculate the powers in the recycling cavities of ET-LF in the
% tuned configuration for a given set of f_2 sideband frequencies. The
% DARM offset is not present here.
%
% Sean Leavey
% June 2016

function create_et_lf_cavity_powers_vs_second_sideband_tuned(filename, frequencies)
    % this script's directory
    directory = fileparts(mfilename('fullpath'));

    % add ET scripts to path
    addpath(genpath([directory, '/et-lf']));

    % export data
    export_sideband_powers_vs_frequency(filename, frequencies, 'tuning', 'tuned', 'python', true);
end