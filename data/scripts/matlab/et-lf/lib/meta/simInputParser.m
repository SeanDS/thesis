% Function to produce a parser object for the standardised input arguments
% to the ET Matlab-based simulation scripts.
%
% Example:
%
% In your simulation function, accept an argument named varargin at the end
% of the function signature.
%
% Then you can call
% >> input = simInputParser(varargin{:});
%
% You can access the arguments by calling the 'input' object:
% >> input.fLow
%
% input.fLow =
%
%      10
%
% Sean Leavey
% sean.leavey@ligo.org
% September 2015
function input = simInputParser(varargin)
    %% Get paths
    
    % This script's directory
    directory = fileparts(mfilename('fullpath'));
    
    % Validation functions
    addpath(genpath([directory, '/../validation/']));
    
    %% Parse inputs
    
    % create parameter parser
    parser = inputParser();
    parser.KeepUnmatched = true;
    
    % parameter set
    parser.addParameter('useExistingPar', false, @islogical);
    parser.addParameter('par', '', @isParamSet);
    
    % frequencies to use
    parser.addParameter('useExistingFreqs', false, @islogical);
    parser.addParameter('f', logspace(-2, 2, 251), @isFrequencyVector);
    parser.addParameter('fLow', 1e-2, @isnumeric);
    parser.addParameter('fHigh', 1e2, @isnumeric);
    parser.addParameter('fCount', 251, @isnumeric);
    
    % Kat path
    parser.addParameter('katPath', getenv('KATPATH'), @isValidKatPath);
    
    % Finesse master file path
    parser.addParameter('masterPath', strcat(fileparts(mfilename('fullpath')), '/../../models/finesse/ETLF.kat'), @isValidFile);
    
    % keep generated Finesse scripts
    parser.addParameter('keepFinesseScripts', false, @islogical);
    
    %% Parse inputs
    parser.parse(varargin{:});
    
    %% Assign results
    input = parser.Results;
end