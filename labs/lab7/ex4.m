% ----------------
% ----- EX 4 -----
% ----------------

function solve_underdetermined_system()
    % ----- defining symbolic variables -----
    syms x y z a

    % ----- defining equations -----
    eq1 = x^2 + y*a - z == 0;
    eq2 = x/z == a;
    
    % ----- solving the system for x, y, z in terms of a -----
    sol = solve([eq1, eq2], [x, y, z]);

    % ----- displaying solutions -----
    fprintf('Solutions:\n');
    fprintf('x = %s\n', char(sol.x));
    fprintf('y = %s\n', char(sol.y));
    fprintf('z = %s\n', char(sol.z));
end
