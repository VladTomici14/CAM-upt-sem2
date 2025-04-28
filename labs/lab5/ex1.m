% ----------------
% ----- EX 1 -----
% ----------------

% a) 
% ----- extracting the coefficients from the equation ----- 
p = [2 -3 0 3 -10 -8];

% ----- computing the roots -----
roots_p = unique(roots(p));

% ----- displaying the solution 
disp("a) solutions in C:");
disp(roots_p);

% b) 
% ----- defining the equation -----
equation = 2*x + sqrt(1 - x.^2) + 1  == (x.^2 + 3*x + 2);

% ----- solving the equation -----
sol = solve(equation, x);

% ----- displaying the solution -----
disp("b) real solutions in R:")
disp(sol);
