% Script to calculate the powers in the recycling cavities of ET-LF in the
% tuned configuration for a given set of Schnupp asymmetries. The DARM
% offset is not present here.
%
% Sean Leavey
% June 2016

function create_et_lf_cavity_powers_vs_schnupp_tuned(filename, l_schnupp)
    % this script's directory
    directory = fileparts(mfilename('fullpath'));

    % add ET scripts to path
    addpath(genpath([directory, '/et-lf']));

    % export data
    export_sideband_powers_vs_schnupp(filename, l_schnupp, 'tuning', 'tuned', 'python', true);
end