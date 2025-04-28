syms x

% first function
eq1 = x^5 + 5*x + 1 == 0;
sol_f = double(solve(eq1, x)); 

% filtering solutions within [-1, 0]
sol_f = sol_f(sol_f >= -1 & sol_f <= 0)

% second function
eq2 = atan(x) + atan(10*x) - 0.75 == 0;
sol_g = double(solve(eq2, x)); 

% filtering solutions within [0, 1]
sol_g = sol_g(sol_g >= 0 & sol_g <= 1)