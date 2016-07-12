% Script to calculate the ERC speed meter quantum noise limited sensitivity in Optickle and Finesse,
% assuming no extra losses.
%
% Sean Leavey
% July 2016

function create_erc_ssm_qnls(filename, frequencies)
    % add speedmeter SVN simulation scripts to path
    addpath(genpath([getenv('SSMSVN'), 'IfoSimulations/Comparisons']));
    
    % add meta lib for exporter
    addpath(genpath([getenv('SSMSVN'), 'IfoSimulations/Libs/Meta']));

    % get data
    [f, q_finesse, q_optickle] = getQnls('UseFrequencyVector', true, 'f', frequencies);
    
    % export
    exporter = DataExporter();
    exporter.data = [f, q_finesse, q_optickle];
    exporter.dataheaders = {'Frequency (Hz)', 'Finesse QNLS (m / sqrt(Hz))', 'Optickle QNLS (m / sqrt(Hz))'};

    exporter.exportCsv(filename, 'python', true);
end