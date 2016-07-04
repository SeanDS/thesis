% Returns a matrix of optical responses from each optic to each probe for
% Optickle.
%
% THIS DOES NOT INCLUDE RADIATION PRESSURE NOISE. Only the actual response
% in Watts per metre of mirror motion to each probe.
%
% Sean Leavey
% sean.leavey@ligo.org
% December 2015
function responseMatrix = get_response_matrix(varargin)
    %% Paths
    
    % this script's directory
    directory = fileparts(mfilename('fullpath'));
    
    % useful functions
    addpath(genpath([directory, '/../']));

    %% Parse arguments

    % get parameter set for mirror and probe lists
    par = par_et_lf(varargin{:});

    % get model
    opt = get_opt_at_operating_point(varargin{:});
    
    % parameter parser for frequencies
    parser = inputParser();
    parser.KeepUnmatched = true;
    parser.addParameter('f', 1e-4, @isPositive);
    parser.parse(varargin{:});
    input = parser.Results;

    %% Tickle, without optomechanical effects
    [fDC, ~, sigAC] = opt.tickle2([], input.f);

    %% Extract TFs
    
    probeNames = par.getProbeNames();
    mirrors = par.mirrors();
    
    nMirrors = length(mirrors);
    nProbes = length(probeNames);
    
    % make a vector of number of mirrors * number of probes
    responseMatrix = zeros(nMirrors, nProbes);
    
    for i = 1 : nMirrors
        driveNum = opt.getDriveNum(mirrors{i});
        
        for j = 1 : nProbes
            probeNum = opt.getProbeNum(probeNames(j));
            
            responseMatrix(i, j) = getTF(sigAC, probeNum, driveNum);
        end
    end
end