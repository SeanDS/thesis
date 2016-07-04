function powers = calculate_reflected_power_vs_prm_trans(prmTrans, varargin)
    %% Paths
    
    % this script's directory
    directory = fileparts(mfilename('fullpath'));
    
    % useful functions
    addpath(genpath([directory, '/../']));

    %% Model and parameters
    
    % parse input arguments
    args = simInputParser(varargin{:});

    % get parameter set
    par = par_et_lf(varargin{:});
    
    % override DARM offset
    EX = par.mirror('EX');
    EX.pos = 0;
    par.mirror('EX') = EX;
    EY = par.mirror('EY');
    EY.pos = 0;
    par.mirror('EY') = EY;
    
    % get frequency vector
    f = getFrequencyVectorFromInput(args);

    % get Optickle model for ET-LF
    opt = opt_et_lf(par);

    % add probes
    opt = prb_et_lf(opt, par);

    % find index of carrier and sidebands so we can grab the right fields from
    % fDC after tickling
    nCarrier = find(opt.vFrf == 0);
    
    lnkPrmLaser = opt.getLinkNum('PR', 'REFL');

    % empty results matrix
    lastResult = length(prmTrans);
    
    powers = zeros(lastResult, 1);
    
    for i = 1 : length(prmTrans)
        fprintf('Iteration %d/%d\n', i, lastResult);
        
        % set PR transmissivity
        opt.setOpticParam('PR', 'Thr', prmTrans(i));
    
        % tickle system to get DC
        fDC = opt.tickle();
        
        % put results into matrix
        powers(i) = abs(fDC(lnkPrmLaser, nCarrier)) .^ 2;
    end
end