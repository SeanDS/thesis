% Script to calculate the reflected IFO power as a function of the power
% recycling mirror transmissivity in ET-LF.
%
% Sean Leavey
% June 2016

function create_et_lf_reflected_power_vs_pr_trans(filename, transmissivities)
    % this script's directory
    directory = fileparts(mfilename('fullpath'));

    % add ET scripts to path
    addpath(genpath([directory, '/et-lf']));

    % export data
    export_reflected_power_vs_prm_trans(filename, transmissivities, 'python', true);
end