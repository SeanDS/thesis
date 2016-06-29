% Script to calculate the powers in the recycling cavities of ET-LF in the
% detuned configuration for a given set of Schnupp asymmetries. The DARM
% offset is not present here.
%
% Sean Leavey
% June 2016

function createEtLfCavityPowersVsSchnuppDetuned(filename, l_schnupp)
    % add SSM Optickle tools to path
    addpath(genpath([getenv('ETGIT'), 'projects/sean-thesis']));

    % export data
    export_sideband_powers_vs_schnupp(filename, l_schnupp, 'tuning', 'detuned', 'python', true);
end