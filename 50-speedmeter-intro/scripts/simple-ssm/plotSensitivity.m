f = logspace(-2, 5, 100);
opt = optSimpleSsm();

w = 2 * pi * 1;
dampRes = [0.01 + 1i, 0.01 - 1i];

opt.setMechTF('M1a', zpk([], -w * dampRes, 1 / 1e-3));
opt.setMechTF('M1b', zpk([], -w * dampRes, 1 / 1.01e-3));

[fDC, sigDC, sigAC, mMech, noiseAC, noiseMech] = opt.tickle([], f);

%% Useful indices

% homodyne subtraction probe
nPrbHDb = opt.getProbeNum('HDb_DC');

%% Response

hM2a = getTF(sigAC, nPrbHDb, opt.getDriveNum('M2a'));
hM2b = getTF(sigAC, nPrbHDb, opt.getDriveNum('M2b'));
hDARM = (hM2a - hM2b) / 2;

%% Noise

nQuant = noiseAC(nPrbHDb, :)';

%% Sensitivity

figure;
zplotlog(f, hDARM);
figure;
zplotlog(f, nQuant);
figure;
zplotlog(f, nQuant ./ hDARM);