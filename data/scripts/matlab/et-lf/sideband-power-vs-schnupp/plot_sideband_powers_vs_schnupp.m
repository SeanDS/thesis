function plot_sideband_powers_vs_schnupp(lSchnupp, varargin)
    %% Calculate
    [titles, powers] = calculate_sideband_powers_vs_schnupp(lSchnupp, varargin{:});
    
    %% Plot
    
    figure;

    semilogy(lSchnupp, powers);

    legend(titles);

    title('Power in Recycling Cavities');
    ylabel('Power [W]');
    xlabel('Schnupp Asymmetry [m]');
end