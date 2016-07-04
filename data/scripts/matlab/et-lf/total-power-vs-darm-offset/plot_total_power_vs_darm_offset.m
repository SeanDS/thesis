function plot_total_power_vs_darm_offset(darmOffsets, varargin)
    %% Calculate
    [titles, powers] = calculate_total_power_vs_darm_offset(darmOffsets, varargin{:});
    
    %% Plot
    
    figure;

    semilogy(darmOffsets, powers(:, end));

    legend(titles(end));

    title('Power at AS');
    ylabel('Power [W]');
    xlabel('DARM offset [m]');
end