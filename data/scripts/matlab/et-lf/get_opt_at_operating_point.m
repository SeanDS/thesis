function opt = get_opt_at_operating_point(varargin)
    par = par_et_lf(varargin{:});
    opt = opt_et_lf(par);
    opt = prb_et_lf(opt, par);
    
    m_sense = zeros(1, opt.Nprobe);
    m_sense(opt.getProbeNum('POP_11_I')) = 1; % PRCL
    m_drive = zeros(opt.Ndrive, 1);
    m_drive(opt.getDriveNum('PR')) = -1;
    
    % set the operating point
    %[opt, pos] = opt.setOperatingPoint(m_drive, m_sense);
    %pos
    
    m_sense = zeros(1, opt.Nprobe);
    m_sense(opt.getProbeNum('POP_11_I')) = 1; % PRCL
    m_sense(opt.getProbeNum('REFL_57_Q')) = 1; % MICH
    m_drive = zeros(opt.Ndrive, 1);
    m_drive(opt.getDriveNum('BS')) = -1;
    m_drive(opt.getDriveNum('PR')) = 1;
    m_drive(opt.getDriveNum('SR')) = -1;
    
    % set the operating point
    [opt, pos] = opt.setOperatingPoint(m_drive, m_sense);
    pos
    
    % set Schnupp and DARM again
    %opt.setPosOffset('IX',
end