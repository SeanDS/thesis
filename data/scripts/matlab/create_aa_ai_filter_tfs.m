% Script to create the transfer functions for the CDS AA/AI filters and
% export them to a file.
%
% Sean Leavey
% June 2016

function create_aa_ai_filter_tfs(filename, f)
    % add SSM Optickle models path
    addpath(genpath([getenv('SSMSVN'), 'IfoSimulations/Optickle/models/servos']));
    
    % add tools
    addpath(genpath([getenv('SSMSVN'), 'IfoSimulations/Libs/Meta']));
    
    % get AA/AI filter
    aaai = aa();
    
    % get frequency response
    h = squeeze(freqresp(aaai, f, 'Hz'));
    
    % headers
    headers = {'Frequency [Hz]', 'AA transfer function', 'AI transfer function'};
    
    % data
    % repeat h as the AA and AI filters are identical
    data = [f', h, h];
    
    % data exporter
    exporter = DataExporter();
    exporter.data = data;
    exporter.dataheaders = headers;
    
    % export
    exporter.exportCsv(filename, 'python', true);
end