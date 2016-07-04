function plot_reflected_power_vs_prm_trans(prmTrans, varargin)
    %% Calculate
    powers = calculate_reflected_power_vs_prm_trans(prmTrans, varargin{:});
    
    %% Plot
    
    figure;

    plot(prmTrans, powers);

    ylabel('Reflected power [W]');
    xlabel('PRM transmissivity');
end