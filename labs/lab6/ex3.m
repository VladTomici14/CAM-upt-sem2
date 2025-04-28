% ----------------
% ----- EX 3 -----
% ----------------

syms x a b p

% ----- original left side -----
lhs = 2*b*cos(x)^2 + 2*a*sin(x)*cos(x);

% ----- right side -----
rhs = p*sqrt(a^2 + b^2) + b;

% ----- equation -----
eqn = lhs == rhs;

% ----- simplifying left side using trigonometric identities -----
lhs_simplified = expand(lhs);

% ----- solving -----
sol = solve(eqn, x);

% ----- displaying the solutions -----
disp('Solutions for x are:');
disp(sol);
