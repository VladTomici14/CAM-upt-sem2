% ----------------
% ----- EX 2 -----
% ----------------

f = @(x) exp(cos(x)) - (sin(x) + 1);

% ----- finding the first solution near -2 -----
sol1 = fzero(f, -2);

% ----- finding the second solution near 2 -----
sol2 = fzero(f, 2);

% ----- displaying the results -----
fprintf('First solution: x = %.6f\n', sol1);
fprintf('Second solution: x = %.6f\n', sol2);
