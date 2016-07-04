% ET-LF interferometer model based on ET-D.
%
% 2014-04-29
% Sean Leavey
% sean.leavey@ligo.org
function opt = opt_et_lf(par)
    %% Paths
    
    % Optickle
    addpath(genpath(getenv('OPTICKLE_DIR')));
    
    %% Fields and amplitudes
    vFrf = createFields(par);
    nCarrier = find(vFrf == 0, 1);
    vArf = zeros(size(vFrf));
    vArf(nCarrier) = sqrt(par.laser('Main').P);
    
    %% Optickle object

    % create an empty model, with frequencies specified
    opt = Optickle(vFrf, par.constants.lambda0);

    %% Input optics
    
    % add a source, with RF amplitudes specified
    opt.addSource('Laser', vArf);

    % add RF modulators
    opt.addRFmodulator('Mod1', par.eom('EOM1').fRf, 1i * par.eom('EOM1').mIndex);
    opt.addRFmodulator('Mod2', par.eom('EOM2').fRf, 1i * par.eom('EOM2').mIndex);

    %% Core optics
    
    % mirrors to add
    listMirror = {'PR', 'PRF', 'BS', 'IX', 'IY', 'EX', 'EY', 'SR'};

    for n = 1 : length(listMirror)
        name = listMirror{n};
        p = par.mirror(name);

        % add beam splitter
        if strcmp(name, 'BS') || strcmp(name, 'PRF')
            % 2014-04-29
            % beam splitters and mirrors, for now, don't have any defined
            % substrate; they are infinitely thin optics
            opt.addBeamSplitter(name, p.angle, 1 / p.RoC, p.T, p.L, 0);
        else
            % 2014-04-29
            % see above
            opt.addMirror(name, 0, 1 / p.RoC, p.T, p.L, 0);
        end

        % set mirror position offset
        opt.setPosOffset(name, p.pos);
        
        % set mechanical transfer function
        opt.setMechTF(name, p.opttf);
    end
    
    %% Sinks

    % behind SRM
    opt = addSink(opt, 'AS');
    
    % pick off from PRC
    opt = addSink(opt, 'POP');
    
    % reflected back to laser
    opt = addSink(opt, 'REFL');

    %% Link optics
    
    % link laser to modulator 1
    opt.addLink('Laser', 'out', 'Mod1', 'in', par.distances.LaserToMod1);

    % link modulator 1 to modulator 2
    opt.addLink('Mod1', 'out', 'Mod2', 'in', par.distances.Mod1ToMod2);

    % link modulator 2 to PR
    opt.addLink('Mod2', 'out', 'PR', 'bk', par.distances.Mod2ToPR);

    opt.addLink('PR', 'fr', 'PRF', 'frA', par.distances.PRtoPRF);
    opt.addLink('PRF', 'frB', 'PR', 'fr', par.distances.PRtoPRF);
    opt.addLink('PRF', 'frA', 'BS', 'frA', par.distances.PRFtoBS);
    opt.addLink('BS', 'frB', 'PRF', 'frB', par.distances.PRFtoBS);

    % link BS A-side outputs to and IX and IY back inputs
    opt.addLink('BS', 'frA', 'IY', 'bk', par.distances.BStoIY);
    opt.addLink('BS', 'bkA', 'IX', 'bk', par.distances.BStoIX);

    % link BS B-side inputs to and IX and IY back outputs
    opt.addLink('IY', 'bk', 'BS', 'frB', par.distances.BStoIY);
    opt.addLink('IX', 'bk', 'BS', 'bkB', par.distances.BStoIX);

    % link the arms
    opt.addLink('IX', 'fr', 'EX', 'fr', par.distances.IXtoEX);
    opt.addLink('EX', 'fr', 'IX', 'fr', par.distances.IXtoEX);

    opt.addLink('IY', 'fr', 'EY', 'fr', par.distances.IYtoEY);
    opt.addLink('EY', 'fr', 'IY', 'fr', par.distances.IYtoEY);

    % link BS to signal recycling mirror
    opt.addLink('BS', 'bkB', 'SR', 'fr', par.distances.BStoSR);
    opt.addLink('SR', 'fr', 'BS', 'bkA', par.distances.BStoSR);

    % link pickoffs to sinks
    opt.addLink('SR', 'bk', 'AS', 'in', 0);
    opt.addLink('PRF','bkB', 'POP', 'in', 0);
    opt.addLink('PR', 'bk', 'REFL', 'in', 0);
end

function fields = createFields(par)
    f1 = par.eom('EOM1').fRf;
    f2 = par.eom('EOM2').fRf;
    n1 = (-par.eom('EOM1').nMod : par.eom('EOM1').nMod)';
    n2 = (-par.eom('EOM2').nMod : par.eom('EOM2').nMod)';
    
    fields = unique([n1 * f1; n2 * f2; f1 + f2; f1 - f2; -(f1 + f2); -f1 + f2]);
end