function plot_error_signal_sweep(dof, varargin)
    %% Sweep
    
    [position, signal] = get_error_signal_sweep(dof, varargin{:});
    
    %% Plot
    
    figure;
    plot(position, signal);
    xlabel('Position');
    ylabel('Power [W]');
    title([dof, ' sweep']);
    grid on;
end