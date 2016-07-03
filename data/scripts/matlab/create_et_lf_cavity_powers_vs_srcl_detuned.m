% Script to calculate the powers in the recycling cavities of ET-LF in the
% detuned configuration for a given set of signal recycling cavity lengths.
% The DARM offset is not present here.
%
% Sean Leavey
% June 2016

function create_et_lf_cavity_powers_vs_srcl_detuned(filename, lengths)
    % this script's directory
    directory = fileparts(mfilename('fullpath'));

    % add ET scripts to path
    addpath(genpath([directory, '/et-lf']));

    % export data
    export_sideband_powers_vs_src_length(filename, lengths, 'tuning', 'detuned', 'python', true);
end