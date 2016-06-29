% Script to calculate the powers in the recycling cavities of ET-LF in the
% tuned configuration for a given set of f_2 sideband frequencies. The
% DARM offset is not present here.
%
% Sean Leavey
% June 2016

function createEtLfCavityPowersVsSecondSidebandTuned(filename, frequencies)
    % add SSM Optickle tools to path
    addpath(genpath([getenv('ETGIT'), 'projects/sean-thesis']));

    % export data
    export_sideband_powers_vs_frequency(filename, frequencies, 'tuning', 'tuned', 'python', true);
end