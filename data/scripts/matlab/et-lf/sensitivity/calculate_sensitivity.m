function [f, qnls] = calculate_sensitivity(varargin)
    %% Paths
    
    % this script's directory
    directory = fileparts(mfilename('fullpath'));
    
    % useful functions
    addpath(genpath([directory, '/../']));
    
    %% Model

    % model
    opt = get_opt_at_operating_point(varargin{:});
    
    % frequency
    f = getFrequencyVectorFromInput(simInputParser(varargin{:}));

    %% Get drives and probes for DARM sensitivity

    % drives
    nEXdrive = opt.getDriveNum('EX');
    nEYdrive = opt.getDriveNum('EY');

    % probes
    nASprobe = opt.getProbeNum('AS_DC');

    %% Tickle
    [~, ~, sigAC, ~, noiseAC] = opt.tickle([], f);

    %% Extract sensitivity information from results

    % get transfer function from each ETM to the probe
    h2a = getTF(sigAC, nASprobe, nEYdrive);
    h2b = getTF(sigAC, nASprobe, nEXdrive);

    % convert to differential motion
    hDARM = squeeze(h2b - h2a)' ./ 2;

    % get quantum noise on the probe
    nQuant = noiseAC(nASprobe, :);

    % calculate QNLS
    qnls = abs(nQuant ./ hDARM) ./ 10000;
end

