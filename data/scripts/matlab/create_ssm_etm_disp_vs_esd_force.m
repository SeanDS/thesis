% Script to create the transfer function from force to displacement for the
% speedmeter ETM suspensions for ESDs.
%
% Sean Leavey
% July 2016

function create_ssm_etm_disp_vs_esd_force(filename, f)
    % add script
    addpath(genpath([getenv('SSMSVN'), 'IfoSimulations/Optickle/projects/noise-budget/esd-displacement']));

    % export data
    exportEtmEsdForceToDisplacement(filename, f, 'python', true);
end