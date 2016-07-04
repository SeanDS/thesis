% Function to handle the user's input with regards to the parameter set. If
% they have specified a parameter set already, this will simply return that
% parameter set. If they have asked for a particular parameter set to be
% generated, this will generate the respective parameter set.
%
% Sean Leavey
% September 2015
function par = parameterSetFromInput(input)
    if ~isstruct(input)
        error('Specified input is not a struct');
    end

    try
        if input.useExistingPar
            fprintf('[Meta] Using provided parameter set\n');
            par = input.par;
        else
            % add path
            % This script's directory
            directory = fileparts(mfilename('fullpath'));
            
            addpath(genpath([directory, '/../../parameters/']));
            
            % use default parameter set
            fprintf('[Meta] Using default parameter set\n');
            par = ParETLF();
        end
    catch exception
        if strcmp(exception.identifier, 'MATLAB:nonExistentField')
            error('Specified input struct does not contain a necessary field.');
        else
            exception
            error('Unknown error.');
        end
    end
end