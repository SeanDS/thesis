% Script to estimate the servo open loop gain for the waveguide experiment
% and output the result as a CSV file.
%
% Sean Leavey and Bryan Barr
function createWgmServoTf(savePath, f)
    %% PZT electronics
    
    g = 1 / 4.5e-7;  % PZT path gain after multiplier
    [ac,bc,cc,dc] = lowpass(100, g);
    [ad,bd,cd,dd] = transdif(10000, 300000, 1);
    [ae,be,ce,de] = transint(100, 5000, 50);
    [af,bf,cf,df] = transint(100, 1500, 15);
    [afa,bfa,cfa,dfa] = transint(1000, 10000, 10);
    [ag,bg,cg,dg] = series(ac, bc, cc, dc, ad, bd, cd, dd);
    [ah,bh,ch,dh] = series(ag, bg, cg, dg, ae, be, ce, de);
    [ai,bi,ci,di] = series(ah, bh, ch, dh, af, bf, cf, df);
    [ap,bp,cp,dp] = series(ai, bi, ci, di, afa, bfa, cfa, dfa);

    % PZT electronics model
    %pztElectronics = ss(ap, bp, cp, dp);
    
    %% Cavity

    g = 1 / 3000;  % overall DC cavity response [V / Hz]
    fCorner = 1500; % cavity corner frequency
    [ac, bc, cc, dc] = lowpass(fCorner, g);
    
    % Cavity model
    %cavity = ss(ac, bc, cc, dc);

    %% PZT and cavity
    
    % overall model: PZT electronics and cavity response
    [ao, bo, co, do] = series(ap, bp, cp, dp, ac, bc, cc, dc);
    overall = ss(ao, bo, co, do);
    
    %% Temperature electronics

    % temperature servo, from foton
    
    % frequency servo TF
    [at, bt, ct, dt] = zp2ss([1.5, 0.75], [40, 0.075], -1e4);
    
    % damping resonance of suspension
    [at2, bt2, ct2, dt2] = zp2ss(...
        2 * pi * [0.1527254442348967 + 1i*0.5802369692820205; ... % poles
         0.1527254442348967 - 1i*0.5802369692820205], ...
        2 * pi * [0.01527254442418741 + 1i*0.5998055962591865; ... % zeros
         0.01527254442418741 - 1i*0.5998055962591865], ...
        1 ... % DC gain
    );

    % integrator at higher frequencies to assist crossover with PZT
    [at, bt, ct, dt] = series(at, bt, ct, dt, at2, bt2, ct2, dt2);

    % response of temperature actuator
    % just a bunch of low passes - this is approximate
    [at3, bt3, ct3, dt3] = lowpass(0.08, 1);
    [at4, bt4, ct4, dt4] = lowpass(0.8, 1);
    [at5, bt5, ct5, dt5] = lowpass(8, 1);

    [at, bt, ct, dt] = series(at, bt, ct, dt, at3, bt3, ct3, dt3);
    [at, bt, ct, dt] = series(at, bt, ct, dt, at4, bt4, ct4, dt4);
    [at, bt, ct, dt] = series(at, bt, ct, dt, at5, bt5, ct5, dt5);

    % multiply by PZT response, as the temperature feedback is added to the
    % PZT feedback
    [at, bt, ct, dt] = series(at, bt, ct, dt, ao, bo, co, do);

    % temperature servo model
    temp = ss(at, bt, ct, dt);

    %% Model outputs
    
    % prescale range
    range = {min(f), max(f)};

    % get frequency response
    hPzt = squeeze(freqresp(prescale(overall, range), f, 'Hz'));
    hTemp = squeeze(freqresp(prescale(temp, range), f, 'Hz'));

    % output to file
    csvwrite(savePath, [f', abs(hPzt), angle(hPzt) * 180 / pi, abs(hTemp), angle(hTemp) * 180 / pi]);
end

function [a, b, c, d] = lowpass(fcut, dcGain)
    % low pass filter in state space representation
    %
    % [a,b,c,d] = lowpass(fcut,dcGain);
    %
    % fcut			frequency cut (Hz)
    % dcGain			dc gain
    %
    % Stuart Killbourn (October 95)

    z	= [];
    p	= -2*pi*fcut;
    k	= dcGain*2*pi*fcut;

    [a,b,c,d] = zp2ss(z,p,k);
end

function [a, b, c, d] = transdif(lf, hf, dcGain)
    % transistional differentiator in state space representation
    %
    % [a,b,c,d] = transdif(lf,hf,dcGain);
    %
    % lf			start differentaition (Hz)
    % hf			stop differentaition (Hz)
    % dcGain			dc gain
    %
    % Stuart Killbourn (October 95)

    z	= -2*pi*lf;
    p	= -2*pi*hf;
    k	= dcGain*(hf/lf);

    [a,b,c,d] = zp2ss(z,p,k);
end

function [a, b, c, d] = transint(lf, hf, dcGain)
    % transistional integrator in state space representation
    %
    % [a,b,c,d] = transint(lf,hf,dcGain);
    %
    % lf			start integration (Hz)
    % hf			stop integration (Hz)
    % dcGain			dc gain
    %
    % Stuart Killbourn (October 95)

    z	= -2*pi*hf;
    p	= -2*pi*lf;
    k	= dcGain*(lf/hf);

    [a,b,c,d] = zp2ss(z,p,k);
end