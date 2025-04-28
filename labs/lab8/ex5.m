% ----------------
% ----- EX 5 -----
% ----------------

function plot_spline_and_pchip(Xi, Yi)
    % ----- generating a dense set of x-values for smooth curves -----
    x_dense = linspace(min(Xi), max(Xi), 500);
    
    % ----- spline cubic interpolation -----
    y_spline = interp1(Xi, Yi, x_dense, 'spline');
    
    % ----- piecewise cubic Hermite interpolation polynomial (PCHIP) -----
    y_pchip = interp1(Xi, Yi, x_dense, 'pchip');
    
    % ----- plotting -----
    figure;
    hold on;
    
    % Plot the original data points
    plot(Xi, Yi, 'ko', 'MarkerFaceColor', 'k', 'DisplayName', 'Data Points');
    
    % Plot the spline interpolation
    plot(x_dense, y_spline, '-', 'DisplayName', 'Cubic Spline');
    
    % Plot the PCHIP interpolation
    plot(x_dense, y_pchip, '--', 'DisplayName', 'PCHIP');
    
    % Customize plot
    xlabel('X');
    ylabel('Y');
    title('Spline vs PCHIP Interpolation');
    legend('Location', 'Best');
    grid on;
    hold off;
end

% ----- defining the data -----
Xi = [0 1 2 3 4 5 6];
Yi = [15 30 75 60 60 40 55];

% ----- calling the function -----
plot_spline_and_pchip(Xi, Yi);
