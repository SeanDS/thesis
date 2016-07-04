% Prints the sensing matrix for ET-LF using Optickle.
%
% Sean Leavey
% sean.leavey@ligo.org
% December 2015
function print_sensing_matrix(varargin)
    %% Paths
    
    % this script's directory
    directory = fileparts(mfilename('fullpath'));
    
    % useful functions
    addpath(genpath([directory, '/../']));
    
    %% Get parameters
    
    % get parameter set
    par = par_et_lf(varargin{:});

    %% Print
    do_print(get_sensing_matrix(varargin{:}), par.dofs, par.getProbeNames());
end

function do_print(response, dofs, probes, varargin)
    %% Parse inputs
    if nargin > 3
        format = varargin{1};
    else
        format = '%.2e';
    end

    %% Print matrix
    
    nDof = length(dofs);
    
    for i = 1 : nDof
        fprintf('\t%s', dofs{i});
    end

    for i = 1 : length(probes)
        line = probes{i};

        for j = 1 : nDof
            line = strcat(line, sprintf(['\t', format], abs(response(j, i))));
        end

        fprintf(sprintf('\n%s', line))
    end

    fprintf('\n')
end