% Script to calculate the powers in the recycling cavities of ET-LF for a
% given set of Schnupp asymmetries. The DARM offset is not present here.
%
% Sean Leavey
% June 2016

function createEtLfCavityPowersVsSchnupp(filename, l_schnupp)
    % add SSM Optickle tools to path
    addpath(genpath([getenv('ETGIT'), 'projects/sean-thesis']));

    % export data
    export_sideband_cavity_powers(filename, l_schnupp, 'python', true);
end