% Script to calculate the equivalent Michelson to the ERC speed meter
% quantum noise limited sensitivity in Optickle and Finesse, assuming
% no extra losses.
%
% Sean Leavey
% July 2016

function create_erc_equiv_mich_qnls(filename, frequencies)
    % add speedmeter SVN simulation scripts to path
    addpath(genpath([getenv('SSMSVN'), 'IfoSimulations/Optickle/projects/equivalent-michelson']));
    
    % add meta lib for exporter
    addpath(genpath([getenv('SSMSVN'), 'IfoSimulations/Libs/Meta']));

    %% Get QNLS
    [f, qnls] = getEquivalentMichelsonQnls('f', frequencies);
    
    %% Export
    
    exporter = DataExporter();
    exporter.data = [f, qnls];
    exporter.dataheaders = {'Frequency (Hz)', 'QNLS (m / sqrt(Hz))'};

    exporter.exportCsv(filename, 'python', true);
end