% Prints the sensing matrix for ET-LF in detuned mode, in LaTeX tabular
% format.
%
% Sean Leavey
% July 2016

% this script's directory
directory = fileparts(mfilename('fullpath'));

% useful functions
addpath(genpath([directory, '/../']));

% frequency to calculate sensing matrix at
f = 25;

% parameters
par = par_et_lf();

% list of all DOFs
dofs = par.dofs;

% list of all probes
allProbes = par.getProbeNames();

% list of DC probes
dcProbes = {'AS_DC', 'POP_DC', 'REFL_DC'};

% list of probes with I and Q collapsed
newProbes = {'\\ASDC{}', '\\ASFIRST{}', '\\ASSECOND{}', '\\ASSUM{}', '\\ASDIFF{}', ...
    '\\POPDC{}', '\\POPFIRST{}', '\\POPSECOND{}', '\\POPSUM{}', '\\POPDIFF{}', ...
    '\\REFLDC{}', '\\REFLFIRST{}', '\\REFLSECOND{}', '\\REFLSUM{}', '\\REFLDIFF{}'};

% order to print DOF columns
% swap DARM and CARM
order = [2, 1, 3, 4, 5];

% initial sensing matrix with I and Q
rawSensingMatrix = get_sensing_matrix('f', f);

% collapse the sensing matrix quadratures into complex numbers
sensingMatrix = convert_iq_to_complex(rawSensingMatrix, dofs, allProbes, dcProbes);

% print sensing matrix
print_sensing_matrix_latex(sensingMatrix, dofs, newProbes, order);