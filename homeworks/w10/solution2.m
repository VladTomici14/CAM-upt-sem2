% defining the function
F = @(x) [
    x(1)^7 - 5*x(1)^2*x(2)^4 + 1510;
    x(2)^5 - 3*x(1)^4 - 105
];

objective = @(x) norm(F(x))^2;

lb = [1.5, 2.5];
ub = [2.5, 3.5];
x0 = [2.0, 3.0];

% setting the options for tolerations
options = optimoptions('fmincon', ...
    'FunctionTolerance', 0.1, ...
    'StepTolerance', 0, ...
    'Display', 'iter');

% solving the system
[x_sol, fval] = fmincon(objective, x0, [], [], [], [], lb, ub, [], options);

% displaying the solutions
disp('Solution:');
disp(x_sol);
