% ----------------
% ----- EX 2 -----
% ----------------

function solve_circle_line_system()
    % ----- defining the system of equations -----
    F = @(vars) [vars(1)^2 + vars(2)^2 - 4;  % x^2 + y^2 = 4
                 vars(1) - vars(2) - 1];     % x - y = 1
    
    % ----- taking initial guesses (choose near each intersection point) -----
    guess1 = [1.5, 0.5];
    guess2 = [-1.5, -2.5];
    
    % ----- solving using fsolve -----
    opts = optimoptions('fsolve', 'Display', 'off');
    sol1 = fsolve(F, guess1, opts);
    sol2 = fsolve(F, guess2, opts);
    
    % ----- displaying solutions -----
    fprintf('Solution 1: x = %.6f, y = %.6f\n', sol1(1), sol1(2));
    fprintf('Solution 2: x = %.6f, y = %.6f\n', sol2(1), sol2(2));
    
    % ----- plotting -----
    theta = linspace(0, 2*pi, 500);
    xc = 2*cos(theta);
    yc = 2*sin(theta);
    
    figure;
    hold on;
    plot(xc, yc, 'b-', 'DisplayName', 'Circle: x^2 + y^2 = 4');
    fplot(@(x) x-1, [-2.5 2.5], 'r--', 'DisplayName', 'Line: x - y = 1');
    plot(sol1(1), sol1(2), 'ko', 'MarkerFaceColor', 'k', 'DisplayName', 'Solution 1');
    plot(sol2(1), sol2(2), 'ko', 'MarkerFaceColor', 'k', 'DisplayName', 'Solution 2');
    xlabel('x');
    ylabel('y');
    axis equal;
    grid on;
    legend('Location', 'best');
    title('Solutions of the system');
    hold off;
end
