% ----------------
% ----- EX 4 -----
% ----------------

% ----- defining the symbolic variables ----- 
syms x m n

% ----- setting up the equation -----
equation = m - x + n/x == m*x + 1;

% ----- solving x in terms of m and n -----
solution = solve(equation, x);

% ----- displaying the general solution -----
disp("General solution in terms of m and n:");
disp(solution);