% ----------------
% ----- EX 7 -----
% ----------------

function extrema_finding()
    % ----- defining f(x) and f'(x) piecewise -----
    f = @(x) sin(x) + sqrt(abs(x));
    
    % ----- derivatives for x > 0 and x < 0 -----
    df_pos = @(x) cos(x) + 1./(2*sqrt(x));
    df_neg = @(x) cos(x) - 1./(2*sqrt(-x));
    
    % ----- interval boundaries -----
    left = -6;
    right = 6;
    
    % ----- finding zeros of f'(x) in segments (avoiding x=0) -----
    extrema = [];
    for x0 = -5.5:1:5.5
        if x0 < 0
            try
                x_ext = fzero(df_neg, [x0, x0+1]);
                extrema = [extrema; x_ext];
            catch
                % Skip if no zero in this interval
            end
        elseif x0 > 0
            try
                x_ext = fzero(df_pos, [x0, x0+1]);
                extrema = [extrema; x_ext];
            catch
                % Skip
            end
        end
    end
    
    % ----- adding x = 0 (nondifferentiable point) -----
    extrema = [extrema; 0];
    
    % ----- evaluating and classify extrema -----
    fprintf('Extrema points in (-6,6):\n');
    for i = 1:length(extrema)
        x = extrema(i);
        fx = f(x);
        % Second derivative test is tricky here, so use nearby points
        dx = 1e-4;
        f_left = f(x - dx);
        f_right = f(x + dx);
        if fx > f_left && fx > f_right
            type = 'Maximum';
        elseif fx < f_left && fx < f_right
            type = 'Minimum';
        else
            type = 'Non-classifiable';
        end
        fprintf('x = %.6f, f(x) = %.6f, %s\n', x, fx, type);
    end
    
    % ----- plotting the function -----
    x_plot = linspace(-6,6,1000);
    y_plot = arrayfun(f, x_plot);
    figure;
    plot(x_plot, y_plot, 'b-', 'LineWidth', 1.5);
    hold on;
    plot(extrema, arrayfun(f, extrema), 'ro', 'MarkerFaceColor', 'r');
    xlabel('x');
    ylabel('f(x)');
    title('Local Extrema of f(x) = sin(x) + sqrt(|x|)');
    grid on;
    hold off;
end
