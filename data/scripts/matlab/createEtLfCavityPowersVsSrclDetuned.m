% Script to calculate the powers in the recycling cavities of ET-LF in the
% detuned configuration for a given set of signal recycling cavity lengths.
% The DARM offset is not present here.
%
% Sean Leavey
% June 2016

function createEtLfCavityPowersVsSrclDetuned(filename, lengths)
    % add SSM Optickle tools to path
    addpath(genpath([getenv('ETGIT'), 'projects/sean-thesis']));

    % export data
    export_sideband_powers_vs_src_length(filename, lengths, 'tuning', 'detuned', 'python', true);
end