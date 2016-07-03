% Script to create the transfer functions for one and two dewhitening
% filters as implemented in the quad channel HV amplifier.
%
% Requires Elektrotickle <https://github.com/tobin/Elektrotickle> by Tobin
% Fricke and LISO by Gerhard Heinzel.
%
% Make sure the environment variable "LISO_DIR" is set, pointing to the
% directory that LISO is installed in.

function create_amp_whitening_tf(save_path, modelPath)
    % add Elektrotickle directory to path
    addpath(genpath(getenv('ELEKTROTICKLE_DIR')));

    %% Preliminaries

    opamps = load_opamps([getenv('LISO_DIR'), 'opamp.lib']);
    model = load_liso(opamps, modelPath);

    %% Run model

    [f, sigAC, ~] = model.tickle();

    nOutputNode = model.getVariableIndex('node', model.output_node_name);

    tf = sigAC(nOutputNode, :);

    %% Export
    csvwrite(save_path, [f; abs(tf); angle(tf) * 180 / pi]');
end