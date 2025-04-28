% ----------------
% ----- EX 6 -----
% ----------------

function minimize_function()
    % ----- defining the function -----
    f = @(x) log(1 - x + x.^3 / 3);
    
    % ----- taking an initial guess -----
    x0 = 0.5;
    
    % ----- optimization options -----
    options = optimoptions('fminunc', 'Display', 'iter', 'Algorithm', 'quasi-newton');
    
    % ----- performing minimization -----
    [x_min, f_min] = fminunc(f, x0, options);
    
    % ----- displaying results -----
    fprintf('Local minimum at x = %.6f\n', x_min);
    fprintf('Function value at minimum f(x) = %.6f\n', f_min);
    
    % ----- plot the function (OPTIONAL) -----
    x_plot = linspace(-1, 2, 500);
    y_plot = arrayfun(f, x_plot);
    figure;
    plot(x_plot, y_plot, 'b-', 'LineWidth', 1.5);
    hold on;
    plot(x_min, f_min, 'ro', 'MarkerFaceColor', 'r');
    xlabel('x');
    ylabel('f(x)');
    title('Function Minimization');
    grid on;
end
