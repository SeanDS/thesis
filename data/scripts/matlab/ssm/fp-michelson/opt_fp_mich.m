% Fabry-Perot Michelson example
%
% Sean Leavey
% July 2016

function opt = opt_fp_mich()
    %% Paths
    
    % Optickle
    addpath(genpath(getenv('OPTICKLE_DIR')));

    %% Parameters

    % input power
    power = 100;
    
    % arm length
    l_arm = 1000;
    
    % RF modulation order
    v_mod = [-1 : 1]';
    
    % RF modulation frequency
    f_mod = 10e6;
    
    % RF modulation depth
    gamma = 0.2;
    
    % light field frequencies w.r.t. carrier
    v_frf = f_mod * v_mod;
    
    % light carrier wavelengths
    lambda = 1064e-9;
    
    % polarisation
    pol = Optickle.polS;
    
    % mirror mechanical frequencies
    w = 2 * pi * 0.7;      % pendulum resonance frequency
    m_etm = 40;          % mass of end mirrors
    damp_res = [0.001 + 1i, 0.001 - 1i];
    
    % DARM offset, set to match power at AS to MI
    darm_offset = 7.5e-12;
    
    %% Create model
    
    % Optickle object
    opt = Optickle(v_frf, lambda, pol);
    
    % add laser
    opt.addSource('Laser', sqrt(power) * (v_frf == 0));
    
    % add RF modulator
    opt.addRFmodulator('Mod', f_mod, 1i * gamma);
    opt.addLink('Laser', 'out', 'Mod', 'in', 0);

    % add beam splitter
    opt.addBeamSplitter('BS', 45, 0, 0.5);
    opt.addLink('Mod', 'out', 'BS', 'frA', 1);

    % add X arm
    opt.addMirror('IX', 0, 0, 0.01);
    opt.addMirror('EX', 0, 0, 0);
    opt.setMechTF('EX', zpk([], -w * damp_res, 1 / m_etm));
    opt.addLink('BS', 'bkA', 'IX', 'bk', 1);
    opt.addLink('IX', 'fr', 'EX', 'fr', l_arm);
    opt.addLink('EX', 'fr', 'IX', 'fr', l_arm);
    opt.addLink('IX', 'bk', 'BS', 'bkB', 1);
    
    % add Y arm
    opt.addMirror('IY', 0, 0, 0.01);
    opt.addMirror('EY', 0, 0, 0);
    opt.setMechTF('EY', zpk([], -w * damp_res, 1 / m_etm));
    opt.addLink('BS', 'frA', 'IY', 'bk', 1);
    opt.addLink('IY', 'fr', 'EY', 'fr', l_arm);
    opt.addLink('EY', 'fr', 'IY', 'fr', l_arm);
    opt.addLink('IY', 'bk', 'BS', 'frB', 1);
    
    % add output
    opt.addSink('AS');
    opt.addLink('BS', 'bkB', 'AS', 'in', 1);
    
    %% Probes
    
    % asymmetric port
    opt.addProbeIn('AS_DC', 'AS', 'in', 0, 0);
    
    %% Positional offsets
    
    % DARM offset
    opt.setPosOffset('EX', darm_offset / 2);
    opt.setPosOffset('EY', -darm_offset / 2);
end