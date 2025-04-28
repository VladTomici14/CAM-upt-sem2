% ----------------
% ----- EX 5 -----
% ----------------

function solve_sequences()
    % ----- defining symbolic variables -----
    syms a b c

    % ----- equations based on the conditions -----
    eq1 = b^2 == a * c;                    % G.P. condition
    eq2 = 2*(b + 4) == a + c;              % A.P. condition
    eq3 = (b + 4)^2 == a * (c + 32);       % Second G.P. condition

    % ----- solving the system -----
    sol = solve([eq1, eq2, eq3], [a, b, c]);

    % ----- displaying solutions -----
    disp('Solutions:');
    for i = 1:length(sol.a)
        fprintf('a = %.4f, b = %.4f, c = %.4f\n', double(sol.a(i)), double(sol.b(i)), double(sol.c(i)));
    end
end
