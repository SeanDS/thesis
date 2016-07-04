% Parameter class for ET-LF simulations.
%
% The design of this class is based on the original version written by
% Andreas Glaefke and Christian Graef for the Glasgow Sagnac-Speedmeter
% group.
%
% For usage examples, see /models/optickle/optETLF.m.
%
% Further description can be found on the labbook at
% https://arran.physics.gla.ac.uk/wp/et-sensing-and-control/2015/09/matlab-framework-for-comparing-optickle-and-finesse-simulations/.
%
% Sean Leavey
% sean.leavey@ligo.org
% September 2015
classdef par_et_lf
    properties (Constant=true, Hidden=true)
        %% Physical constants
        lambda0   = 1550e-9;            % fundamental laser wavelength [m]
        nSi       = 3.42009;
        nSiO2     = 1.45;
    end

    properties (Hidden=true)
        %% Sideband properties
        fRf1 = 11363101;                % modulation frequency 1st sideband
        fRf2 = 56815505;                % modulation frequency 2nd sideband
        mIndex1 = 0.1;                  % modulation index 1st sideband
        mIndex2 = 0.1;                  % modulation index 2nd sideband
        nMod1 = 1;                      % modulation order 1st sideband
        nMod2 = 1;                      % modulation order 2nd sideband

        %% Laser properties
        laserPower = 3;                 % input laser power

        %% Lengths
        lPrc = 10;                      % power recycling cavity length
        lSrc = 11.585;                  % signal recycling cavity length
        lX   = 10000;                   % X-arm length
        lY   = 10000;                   % Y-arm length
        
        %% Offset lengths
        
        % Schnupp asymmetry
        lSchnupp = 0.08;                % lSchnupp = lIX - lIY

        % mean distance of IX and IY to beam splitter
        lMean = 300;                    % lMean = (lIX + lIY) / 2
        
        % SRM tunings [radians]
        srmTunings = struct(...
            'tuned',    0, ...
            'detuned',  0.6 * pi ... % 25 Hz detuning
        );
    
        % DARM offsets (per tuning, lDarm = lX - lY) [m]
        darmOffsets = struct(...
            'tuned',    1.6e-12, ...
            'detuned',  12e-12 ...
        );
    end

    properties
        tuning;
        mirror = containers.Map();
        laser = containers.Map();
        eom = containers.Map();
        distances = containers.Map();
        constants = struct();
        mirrors = {};
        readouts = {};
        readoutNodes = struct();
        dofs = {};
        optickleInputMatrix = [];
        finesseInputMatrix = [];
    end

    methods
        function obj = par_et_lf(varargin)
            
            %% Paths
            % this script's directory
            directory = fileparts(mfilename('fullpath'));

            % validation functions
            addpath(genpath([directory, '/lib/validation/']));
            
            % physical functions
            addpath(genpath([directory, '/lib/physical/']));
            
            %% Input parsing

            % setup input parser
            parser = inputParser();
            parser.KeepUnmatched = true;
            
            parser.addParameter('fRf1', obj.fRf1, @isnumeric);
            parser.addParameter('fRf2', obj.fRf2, @isnumeric);
            parser.addParameter('mIndex1', obj.mIndex1, @isnumeric);
            parser.addParameter('mIndex2', obj.mIndex2, @isnumeric);
            parser.addParameter('nMod1', obj.nMod1, @isInteger);
            parser.addParameter('nMod2', obj.nMod2, @isInteger);
            parser.addParameter('lSchnupp', obj.lSchnupp, @isnumeric);
            parser.addParameter('lSrc', obj.lSrc, @isnumeric);
            parser.addParameter('tuning', 'detuned', @isstr);

            % parse inputs
            parser.parse(varargin{:});
            input = parser.Results;
            
            % calculate SRM detuning and DARM offset based on input
            if strcmp(input.tuning, 'tuned')
                posSrm = tuningRadiansToMetres(obj.srmTunings.tuned, obj.lambda0);
                lDarm = obj.darmOffsets.tuned;
            elseif strcmp(input.tuning, 'detuned')
                posSrm = tuningRadiansToMetres(obj.srmTunings.detuned, obj.lambda0);
                lDarm = obj.darmOffsets.detuned;
            else
                error('Specified tuning argument not recognised');
            end
            
            obj.tuning = input.tuning;

            %% Constants

            obj.constants = struct(...
                'lambda0', obj.lambda0 ...
            );
        
            %% Sensing
            
            % list of mirrors as columns of the input matrix
            obj.mirrors = {
                'IX', 'EX', 'IY', 'EY', ...
                'BS', 'PR', 'SR' ...
            };
        
            % list of readouts
            obj.readouts = {
                'AS', 'POP', 'REFL' ...
            };
        
            % list of Finesse nodes mapping to readouts
            obj.readoutNodes.AS = 'nSR2';
            obj.readoutNodes.POP = 'nPRF4';
            obj.readoutNodes.REFL = 'nPR1';
        
            % list of degrees of freedom as rows of the input matrix
            obj.dofs = {
                'DARM', 'CARM', 'MICH', ...
                'PRCL', 'SRCL' ...
            };
            
            % Optickle input matrix.
            obj.optickleInputMatrix = [...
                % IX    EX    IY    EY    BS    PR    SR
                   0   0.5     0  -0.5     0     0     0; % DARM
                   0   0.5     0   0.5     0     0     0; % CARM
                   %0     0     0     0  -0.15    0.5     0.5; % MICH, doesn't seem to work (looks almost identical to PRCL)
                -0.5   0.5   0.5  -0.5     0     0     0  % MICH
                   0     0     0     0     0     1     0; % PRCL
                   0     0     0     0     0     0     1; % SRCL
            ];
        
            % Finesse input matrix is the same as Optickle's except for the
            % definition of MICH.
            obj.finesseInputMatrix = obj.optickleInputMatrix;
            obj.finesseInputMatrix(3, :) = [...
                % IX    EX    IY    EY    BS    PR    SR
                   0     0     0     0   0.15      0.5     -0.5; % MICH
            ];

            %% Input optics

            obj.laser('Main') = struct(...
                'P', obj.laserPower ...
            );

            obj.eom('EOM1') = struct(...
                'fRf',  input.fRf1, ...
                'mIndex',  input.mIndex1, ...
                'nMod', input.nMod1 ...
            );

            obj.eom('EOM2') = struct(...
                'fRf',  input.fRf2, ...
                'mIndex',  input.mIndex2, ...
                'nMod', input.nMod2 ...
            );

            %% Mirrors
            %
            % pos   =   microscopic length offset [m]
            % R     =   power reflectivity of HR surface
            % L     =   substrate power loss
            % RoC   =   radius of curvature [m]
            % n     =   refractive index
            % tf    =   transfer function (gain k is reciprocal of mass)
            obj.mirror('PR') = struct(...
                'pos',      0, ...
                'T',        1 - 0.954, ...
                'L',        37.5e-6, ...
                'RoC',      inf, ...
                'n',        obj.nSiO2, ...
                'finm',     0, ...
                'opttf',    zpk([], [], 0) ...
            );

            obj.mirror('IX') = struct(...
                'pos',      0, ...
                'T',        1 - 0.993, ...
                'L',        37.5e-6, ...
                'RoC',      inf, ...
                'n',        obj.nSi, ...
                'finf',     0.14, ...
                'finq',     1000, ...
                'finm',     211, ...
                'opttf',    zpk([], 2 * pi * 0.1 * [-0.1 + 1i, -0.1 - 1i], 1 / 211) ...
            );

            obj.mirror('IY') = struct(...
                'pos',      0, ...
                'T',        1 - 0.993, ...
                'L',        37.5e-6, ...
                'RoC',      inf, ...
                'n',        obj.nSi, ...
                'finf',     0.14, ...
                'finq',     1000, ...
                'finm',     211, ...
                'opttf',    zpk([], 2 * pi * 0.1 * [-0.1 + 1i, -0.1 - 1i], 1 / 211) ...
            );

            obj.mirror('EX') = struct(...
                'pos',      lDarm / 2, ...
                'T',        1 - 0.999994, ...
                'L',        37.5e-6, ...
                'RoC',      inf, ...
                'n',        obj.nSi, ...
                'finf',     0.14, ...
                'finq',     1000, ...
                'finm',     211, ...
                'opttf',    zpk([], 2 * pi * 0.1 * [-0.1 + 1i, -0.1 - 1i], 1 / 211) ...
            );

            obj.mirror('EY') = struct(...
                'pos',      -lDarm / 2, ...
                'T',        1 - 0.999994, ...
                'L',        37.5e-6, ...
                'RoC',      inf, ...
                'n',        obj.nSi, ...
                'finf',     0.14, ...
                'finq',     1000, ...
                'finm',     211, ...
                'opttf',    zpk([], 2 * pi * 0.1 * [-0.1 + 1i, -0.1 - 1i], 1 / 211) ...
            );

            obj.mirror('SR') = struct(...
                'pos',      posSrm, ...
                'T',        1 - 0.8, ...
                'L',        37.5e-6, ...
                'RoC',      inf, ...
                'n',        obj.nSiO2, ...
                'finm',     0, ...
                'opttf',    zpk([], [], 0) ...
            );
        
            % angle =   angle of incidence [degrees]
            obj.mirror('BS') = struct(...
                'pos',      0, ...
                'T',        0.5, ...
                'L',        100e-6, ...
                'angle',    60, ...
                'RoC',      inf, ...
                'n',        obj.nSiO2, ...
                'finm',     0, ...
                'opttf',    zpk([], [], 0) ...
            );
        
            obj.mirror('PRF') = struct(...
                'pos',      0, ...
                'T',        0.00015, ...
                'L',        0, ...
                'angle',    0, ...
                'RoC',      inf, ...
                'n',        obj.nSiO2, ...
                'finm',     0, ...
                'opttf',    zpk([], [], 0) ...
            );

            %% Distances

            obj.distances = struct(...
                'LaserToMod1',  0, ...
                'Mod1ToMod2',   0, ...
                'Mod2ToPR',     0, ...
                'PRtoPRF', obj.lPrc - 1, ...
                'PRFtoBS', 1, ...
                'BStoIX', obj.lMean + input.lSchnupp / 2, ...
                'BStoIY', obj.lMean - input.lSchnupp / 2, ...
                'IXtoEX', obj.lX, ...
                'IYtoEY', obj.lY, ...
                'BStoSR', input.lSrc ...
            );
        
            %% Set tuning-specific values
            
            if strcmp(obj.tuning, 'tuned')
                % set beam splitter tuning to ensure EX and EY responses
                % are out of phase (in detuned, the signal recycling pole
                % does this for us)
                %bs = obj.mirror('BS');
                %bs.pos = bs.pos + obj.lambda0 / 2;
                %obj.mirror('BS') = bs;
            end
        end
    
        %% Returns a list of modulation frequencies and their corresponding phases
        function frequencies = getModulationFrequencies(obj)
            frequencies = [....
                obj.eom('EOM1').fRf;
                obj.eom('EOM2').fRf;
                obj.eom('EOM1').fRf + obj.eom('EOM2').fRf;  % f1 + f2
                obj.eom('EOM2').fRf - obj.eom('EOM1').fRf;  % f2 - f1
            ];
        end
        
        function phases = getModulationPhases(obj)
            %         I   Q
            phases = [0, 90];
        end
        
        function phaseNames = getModulationQuadratures(obj)
            phaseNames = {'I', 'Q'};
        end
        
        function names = getProbeNames(obj)
            names = {};
            frequencies = obj.getModulationFrequencies();
            quadratures = obj.getModulationQuadratures();
            
            for i = 1 : length(obj.readouts)              
                readout = obj.readouts{i};
                
                % DC probe
                names{end + 1} = sprintf('%s_DC', readout);
                
                for j = 1 : length(frequencies)
                    % extract modulation frequency in MHz
                    frequency = sprintf('%.0f', frequencies(j, 1) / 1e6);
                    
                    for k = 1 : length(quadratures)
                        quadrature = quadratures{k};
                        
                        % RF probe
                        names{end + 1} = sprintf('%s_%s_%s', readout, frequency, quadrature);
                    end
                end
            end
        end
        
        function matrix = getInputMatrix(obj, package)
            if strcmp(package, 'optickle')
                matrix = obj.optickleInputMatrix;
            elseif strcmp(package, 'finesse')
                matrix = obj.finesseInputMatrix;
            else
                error('Specified simulation package is invalid.');
            end
        end
    end
end