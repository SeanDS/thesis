% Returns a sweep through zero crossings for a degree of freedom to a
% probe.
%
% Sean Leavey
% sean.leavey@ligo.org
% December 2015
function [position, signal] = get_error_signal_sweep(dof, probe, range, points, varargin)
    %% Paths
    
    % this script's directory
    directory = fileparts(mfilename('fullpath'));
    
    % useful functions
    addpath(genpath([directory, '/../']));

    %% Model
    
    % get parameters for DOF names
    par = par_et_lf(varargin{:});

    % get model
    opt = get_opt_at_operating_point(varargin{:});

    %% Sweep
    
    % empty position vector
    pos = zeros(opt.Ndrive, 1);
    
    % mirror scalings for this DOF
    dofIndex = find(strcmp(par.dofs, dof));
    
    if dofIndex == 0
        % DOF not found
        error('Specified degree of freedom not found. Make sure you specify a degree of freedom listed in ParETLF.m');
    end
    
    inputMatrix = par.getInputMatrix('optickle');
    
    % scaling values for mirror contributions in this degree of freedom
    % (i.e. row of the input matrix corresponding to this DOF)
    dofScale = inputMatrix(dofIndex, :);
    
    for i = 1 : length(dofScale)
        scale = dofScale(i);
        mirror = par.mirrors{i};
        
        % position of this mirror
        pos(opt.getDriveIndex(mirror)) = range * scale;
    end
    
    % indices of non-zero mirror contributions in this degree of freedom
    nonZeroOpticIndices = find(dofScale);
    
    % position vector to use, corresponding to position of first non-zero
    % mirror contribution
    nonZeroOptic = par.mirrors{nonZeroOpticIndices(1)};
    
    % do sweep
    [poses, sigDC] = opt.sweepLinear(-pos, pos, points);
    
    % extract position of first optic with non-zero contribution to this
    % degree of freedom in the input matrix
    position = poses(opt.getDriveIndex(nonZeroOptic), :);
    
    % construct the signal for the specified degree of freedom
    signal = sigDC(opt.getProbeNum(probe), :);
end