% ET-LF probes.
%
% Sean Leavey
% September 2015
function opt = prbETLF(opt, par)
    readouts = par.readouts;
    probeNames = par.getProbeNames();
    frequencies = par.getModulationFrequencies();
    phases = par.getModulationPhases();
    
    nReadouts = length(readouts);
    nFreq = length(frequencies);
    nPhase = length(phases);
    
    n = 1;
    
    for i = 1 : nReadouts
        sn = opt.getSerialNum(readouts{i});
            
        % add DC probe
        opt.addProbeIn(probeNames{n}, sn, 'in', 0, 0);
        
        n = n + 1;
        
        for j = 1 : nFreq
            frequency = frequencies(j);
            
            for k = 1 : nPhase
                phase = phases(k);
                name = probeNames{n};
                
                opt.addProbeIn(name, sn, 'in', frequency, phase);
                
                n = n + 1;
            end
        end
    end
end