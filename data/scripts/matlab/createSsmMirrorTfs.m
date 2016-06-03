% Script to create the transfer functions for the Sagnac speed meter to
% various ports.
%
% Sean Leavey
% May 2016

function createSsmMirrorTfs(filename, f)
    % add SSM Optickle tools to path
    addpath(genpath([getenv('SSMSVN'), 'IfoSimulations/Optickle/projects/transfer-functions']));

    % export data
    exportTransferFunctions(filename, f, 'python', true);
end