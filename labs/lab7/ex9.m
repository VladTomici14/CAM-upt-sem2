% ----------------
% ----- EX 9 -----
% ----------------

function simplex_optimization()
    % ----- defining the objective function -----
    f = @(v) v(1) / (v(1)^2 + v(2)^2 + v(3)^2 + 1);
    
    % ----- taking an initial guess -----
    x0 = [0.6, -0.2, -0.1];
    
    % ----- performing optimization using fminsearch (Simplex method) -----
    options = optimset('Display', 'iter');  % Show iterations
    [opt_point, fval] = fminsearch(f, x0, options);
    
    % ----- displaying results -----
    fprintf('Optimal point: x = %.6f, y = %.6f, z = %.6f\n', opt_point(1), opt_point(2), opt_point(3));
    fprintf('Function value at optimum: f(x,y,z) = %.6f\n', fval);
end
