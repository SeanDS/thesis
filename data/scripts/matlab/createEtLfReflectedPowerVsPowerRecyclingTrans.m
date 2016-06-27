% Script to calculate the reflected IFO power as a function of the power
% recycling mirror transmissivity in ET-LF.
%
% Sean Leavey
% June 2016

function createEtLfReflectedPowerVsPowerRecyclingTrans(filename, transmissivities)
    % add SSM Optickle tools to path
    addpath(genpath([getenv('ETGIT'), 'projects/sean-thesis']));

    % export data
    export_reflected_power_vs_prm_trans(filename, transmissivities, 'python', true);
end