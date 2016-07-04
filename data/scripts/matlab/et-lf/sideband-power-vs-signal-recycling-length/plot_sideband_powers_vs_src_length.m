function plot_sideband_powers_vs_src_length(lengths, varargin)
    %% Calculate
    [titles, powers] = calculate_sideband_powers_vs_src_length(lengths, varargin{:});
    
    %% Plot
    
    figure;

    semilogy(lengths, powers);

    legend(titles);

    title('Power in Recycling Cavities');
    ylabel('Power [W]');
    xlabel('Schnupp Asymmetry [m]');
end