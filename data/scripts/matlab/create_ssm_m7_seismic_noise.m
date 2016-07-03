% Script to create the seismic noise in units of effective DARM for the
% Sagnac speed meter.
%
% Sean Leavey
% May 2016

function create_ssm_m7_seismic_noise(filename, f, coupling)
    % add SSM Optickle tools to path
    addpath(genpath([getenv('SSMSVN'), 'IfoSimulations/Optickle/projects/m7-control']));

    % export data
    exportM7Seismic(filename, f, coupling, 'python', true);
end