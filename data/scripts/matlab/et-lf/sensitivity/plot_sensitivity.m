function plot_sensitivity(varargin)
    [f, qnls] = calculate_sensitivity(varargin{:});
    
    %% Plot
    
    figure;
    loglog(f, qnls);
end