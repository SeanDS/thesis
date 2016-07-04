% Returns the sensing matrix for ET-LF using Optickle.
%
% Sean Leavey
% sean.leavey@ligo.org
% December 2015
function sensingMatrix = get_sensing_matrix(varargin)
    %% Paths
    
    % this script's directory
    directory = fileparts(mfilename('fullpath'));
    
    % useful functions
    addpath(genpath([directory, '/../']));

    % get parameter set for input matrix
    par = par_et_lf(varargin{:});

    %% Get response matrix
    responseMatrix = get_response_matrix(varargin{:});
    
    %% Create sensing matrix
    sensingMatrix = par.getInputMatrix('optickle') * responseMatrix;
end