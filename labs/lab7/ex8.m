% ----------------
% ----- EX 8 -----
% ----------------

function quasi_newton_optimization()
    % ----- defining the function to minimize -----
    f = @(v) v(1)^2 - v(2)^2;  % v(1) = x, v(2) = y
    
    % ----- taking an initial guess -----
    x0 = [1; 0];
    
    % ----- optimisation options -----
    options = optimoptions('fminunc', 'Algorithm', 'quasi-newton', 'Display', 'iter');
    
    % ----- performing the optimization -----
    [x_opt, fval] = fminunc(f, x0, options);
    
    % ----- displaying results -----
    fprintf('Optimal point: x = %.6f, y = %.6f\n', x_opt(1), x_opt(2));
    fprintf('Function value at optimum: f(x,y) = %.6f\n', fval);
end
