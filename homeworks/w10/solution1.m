% defining the system as a function
F = @(x) [
    x(1)^7 - 5*x(1)^2*x(2)^4 + 1510;
    x(2)^5 - 3*x(1)^4 - 105
];

% setting the options for tolerations
options = optimoptions('fsolve', ...
    'FunctionTolerance', 0.1, ...   % ε_f = 0.1
    'StepTolerance', 0, ...         % ε_x = 0
    'Display', 'iter');

% taking an initial guess interval
x0 = [2.0, 3.0];

% solving the system
[x_sol, fval, exitflag, output] = fsolve(F, x0, options);

% displaying the solution
disp('Solution:');
disp(x_sol);
disp('Function values at solution:');
disp(fval);
