% Script to calculate the powers in the recycling cavities of ET-LF in the
% tuned configuration for a given set of DARM offsets.
%
% Sean Leavey
% June 2016

function createEtLfCavityPowersVsDarmOffsetTuned(filename, darm_offsets)
    % add SSM Optickle tools to path
    addpath(genpath([getenv('ETGIT'), 'projects/sean-thesis']));

    % export data
    export_sideband_powers_vs_darm_offset(filename, darm_offsets, 'tuning', 'tuned', 'python', true);
end