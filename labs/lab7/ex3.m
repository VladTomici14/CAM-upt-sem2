% ----------------
% ----- EX 3 -----
% ----------------

function solve_symbolic_system()
    % ----- defining symbolic variables -----
    syms m n p q
    
    % ----- defining equations -----
    eq1 = m + p - 2*n == 0;
    eq2 = n*q - p^2 == 0;
    eq3 = m + q - 37 == 0;
    eq4 = n + p - 36 == 0;
    
    % ----- solving the system -----
    sol = solve([eq1, eq2, eq3, eq4], [m, n, p, q]);
    
    % ----- displaying solutions -----
    fprintf('Solutions:\n');
    fprintf('m = %s\n', char(sol.m));
    fprintf('n = %s\n', char(sol.n));
    fprintf('p = %s\n', char(sol.p));
    fprintf('q = %s\n', char(sol.q));
end
