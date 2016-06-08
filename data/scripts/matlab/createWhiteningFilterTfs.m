% Script to create the transfer functions for the sensor and actuator
% whitening filters and export them to a file.
%
% Sean Leavey
% June 2016

function createWhiteningFilterTfs(filename, f)
    % add SSM Optickle models path
    addpath(genpath([getenv('SSMSVN'), 'IfoSimulations/Optickle/models/servos']));
    
    % add tools
    addpath(genpath([getenv('SSMSVN'), 'IfoSimulations/Libs/Meta']));
    
    % get input and output whitening filters
    input = inputWhitening();
    output = outputWhitening();
    
    % get frequency responses
    hI = squeeze(freqresp(input, f, 'Hz'));
    hO = squeeze(freqresp(output, f, 'Hz'));
    
    % headers
    headers = {'Frequency [Hz]', 'Input whitening transfer function', 'Output whitening transfer function'};
    
    % data
    data = [f', hI, hO];
    
    % data exporter
    exporter = DataExporter();
    exporter.data = data;
    exporter.dataheaders = headers;
    
    % export
    exporter.exportCsv(filename, 'python', true);
end