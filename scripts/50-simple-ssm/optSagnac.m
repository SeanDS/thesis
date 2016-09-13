% Simple Sagnac
function opt = optSagnac()
    %% Build the Optickle input parameters
    
    % homodyne angle
    homodyneAngle = 90;
    
    % laser frequencies w.r.t. carrier
    vFrf = 0;
    
    % get index of carrier field
    nCarrier = find(vFrf == 0, 1);

    % input amplitude is just carrier (zero frequency)
    vArf = zeros(size(vFrf));
    vArf(nCarrier) = sqrt(10);

    %% Create Optickle model
    % frequencies to model are specified in parameters
    opt = Optickle(vFrf, 1064e-9, Optickle.polS);
    
    %% Add input optics

    % add a source, with RF amplitudes specified
    opt.addSource('Laser', vArf);

    %% Add optics
    
    opt.addBeamSplitter(...
        'MainBeamSplitter', ... % pretty name
        45, ...                 % angle of incidence
        0, ...                  % 'curvature' (1 / RoC)
        0.5 ...                 % HR coating transmissivity
    );

    opt.addBeamSplitter(...
        'LocalOscillatorBeamSplitter', ...
        45, ...
        0, ...
        0.5 ...
    );

    opt.addBeamSplitter(...
        'Me', ...
        0, ...
        0, ...
        0 ...
    );

    opt.addBeamSplitter(...
        'Mne', ...
        0, ...
        0, ...
        0 ...
    );

    opt.addBeamSplitter(...
        'Mn', ...
        0, ...
        0, ...
        0 ...
    );

    opt.addBeamSplitter(...
        'HomodyneBeamSplitter', ...
        45, ...
        0, ...
        0.5 ...
    );
    
    %% Add sinks
    
    % homodyne readout
    opt.addSink('HDa');
    opt.addSink('HDb');

    %% Add links
    
    % laser to modulators
    opt.addLink('Laser', 'out', 'LocalOscillatorBeamSplitter', 'frB', 1);

    % LO BS -> main BS
    opt.addLink('LocalOscillatorBeamSplitter', 'frB', 'MainBeamSplitter', 'bkB', 0.1);
    opt.addLink('MainBeamSplitter', 'bkA', 'LocalOscillatorBeamSplitter', 'frA', 0.1);

    % main BS -> M1a
    opt.addLink('MainBeamSplitter', 'frB', 'Me', 'frA', 1);
    opt.addLink('Me', 'frB', 'MainBeamSplitter', 'frA', 1);

    % Me -> Mne
    opt.addLink('Me', 'frA', 'Mne', 'frA', 1);
    opt.addLink('Mne', 'frB', 'Me', 'frB', 1);

    % Mne -> Mn
    opt.addLink('Mne', 'frA', 'Mn', 'frA', 1);
    opt.addLink('Mn', 'frB', 'Mne', 'frB', 1);

    % Mn -> main BS
    opt.addLink('Mn', 'frA', 'MainBeamSplitter', 'bkA', 1);
    opt.addLink('MainBeamSplitter', 'bkB', 'Mn', 'frB', 1);

    % main BS -> HomodyneBeamSplitter
    opt.addLink('MainBeamSplitter', 'frA', 'HomodyneBeamSplitter', 'frB', 0.2);
    opt.addLink('HomodyneBeamSplitter', 'frA', 'MainBeamSplitter', 'frB', 0.2);
    
    % LO beam splitter -> HomodyneBeamSplitter
    opt.addLink('LocalOscillatorBeamSplitter', 'bkA', 'HomodyneBeamSplitter', 'bkB', 1);
    %opt.addLink('HomodyneBeamSplitter', 'bkB', 'LocalOscillatorBeamSplitter', 'bkA', 1);
    
    % HomodyneBeamSplitter -> HDa
    opt.addLink('HomodyneBeamSplitter', 'bkB', 'HDa', 'in', 0.1);
    opt.addLink('HDa', 'out', 'HomodyneBeamSplitter', 'bkA', 0.1);

    % HomodyneBeamSplitter -> HDb
    opt.addLink('HomodyneBeamSplitter', 'frB', 'HDb', 'in', 0.1);
    opt.addLink('HDb', 'out', 'HomodyneBeamSplitter', 'frA', 0.1);
    
    %% Set positions
    
    % set cavity mirror positions to be resonant (Optickle doesn't do this
    % by default)
    %opt.setPosOffset('M2a', (opt.lambda(nCarrier) / 4) / cos(degtorad(opt.getOptic('M2a').aoi)));
    %opt.setPosOffset('M2b', (opt.lambda(nCarrier) / 4) / cos(degtorad(opt.getOptic('M2b').aoi)));
    
    % set homodyne angle as a position offset on the homodyne BS
    offset = ...
    (opt.lambda(nCarrier) / 8) / ...
    cos(degtorad(opt.getOptic('HomodyneBeamSplitter').aoi)) + ...
    (opt.lambda(nCarrier) * ...
    ((homodyneAngle - 90) / 2) / 360);
    
    opt.setPosOffset('HomodyneBeamSplitter', offset);

    %% Add probes
    
    % homodyne DC probes
    opt.addProbeIn('HDa_DC', 'HDa', 'in', 0, 0);
    opt.addProbeIn('HDb_DC', 'HDb', 'in', 0, 0);
    
    %% Output matrix
    
    % start with identity matrix (one readout maps to one probe)
    opt.mProbeOut = eye(opt.Nprobe);
    
    % get homodyne probes
    nPrbHDa = opt.getProbeNum('HDa_DC');
    nPrbHDb = opt.getProbeNum('HDb_DC');
    
    % combine homodyne ports into + and - readouts
    opt.mProbeOut(nPrbHDa, nPrbHDb) = 1;  % A + B
    opt.mProbeOut(nPrbHDb, nPrbHDa) = -1; % A - B
    
    % mProbeOut looks like:
    %
    %     HDa  HDb
    % HDa  1    1    (a + b)
    % HDb -1    1    (a - b)
end