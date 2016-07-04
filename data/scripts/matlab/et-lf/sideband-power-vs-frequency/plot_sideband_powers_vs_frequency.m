function plot_sideband_power_vs_frequency(frequencies, varargin)
    %% Calculate
    [titles, powers] = calculate_sideband_powers_vs_frequency(frequencies, varargin{:});
    
    %% Plot
    
    figure;

    semilogy(frequencies, powers);

    legend(titles);

    title('Power in Recycling Cavities');
    ylabel('Power [W]');
    xlabel('Frequency [Hz]');
end