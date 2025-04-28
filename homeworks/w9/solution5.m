syms x

% For f(x)
eq1 = x^5 + 5*x + 1 == 0;
root_f = vpasolve(eq1, x, [-1, 0]);

% For g(x)
eq2 = atan(x) + atan(10*x) - 0.75 == 0;
root_g = vpasolve(eq2, x, [0, 1]);

disp(['Root of f(x): ', char(root_f)]);
disp(['Root of g(x): ', char(root_g)]);
