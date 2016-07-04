function opt = get_opt_at_operating_point(varargin)
    par = par_et_lf(varargin{:});
    opt = opt_et_lf(par);
    opt = prb_et_lf(opt, par);
    
    m_sense = zeros(1, opt.Nprobe);
    m_sense(opt.getProbeNum('POP_11_I')) = 1; % PRCL
    m_drive = zeros(opt.Ndrive, 1);
    m_drive(opt.getDriveNum('BS')) = 0.15;
    m_drive(opt.getDriveNum('SR')) = 0.5;
    m_drive(opt.getDriveNum('PR')) = -0.5;
    
    % set the operating point
    %[opt, ~] = opt.setOperatingPoint(m_drive, m_sense);
    
    %% Set demodulation phases
    
    % phases read from combined I and Q sensing matrix
    demod_carm = -0.01;
    demod_mich = 80.5; % an offset appears for slightly different phase
    demod_prcl = -36.40;
    demod_srcl = -168.18;
    
    % CARM
    opt.setProbePhase('REFL_11_I', demod_carm);
    opt.setProbePhase('REFL_11_Q', demod_carm + 90);
    
    % MICH
    opt.setProbePhase('POP_57_I', demod_mich - 90);
    opt.setProbePhase('POP_57_Q', demod_mich);
    
    % PRCL
    opt.setProbePhase('POP_11_I', demod_prcl);
    opt.setProbePhase('POP_11_Q', demod_prcl + 90);
    
    % SRCL
    opt.setProbePhase('REFL_68_I', demod_srcl - 90);
    opt.setProbePhase('REFL_68_Q', demod_srcl);
end