% Script to calculate the response of a Michelson versus a Fabry-Perot
% Michelson.
%
% Sean Leavey
% July 2016

function create_mich_vs_fp_mich_response(filename, frequencies)
    % this script's directory
    directory = fileparts(mfilename('fullpath'));

    % add ET scripts to path
    addpath(genpath([directory, '/ssm']));

    % export data
    export_mich_vs_fp_mich_response(filename, frequencies, 'python', true);
end