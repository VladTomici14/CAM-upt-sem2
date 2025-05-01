% defining the equations
F = @(x) [
    x(1)^7 - 5*x(1)^2*x(2)^4 + 1510;
    x(2)^5 - 3*x(1)^4 - 105
];

objective = @(x) norm(F(x))^2;

lb = [1.5, 2.5];
ub = [2.5, 3.5];

options = optimoptions('ga', 'Display', 'iter', 'FunctionTolerance', 0.1);

% solving the system 
[x_sol, fval] = ga(objective, 2, [], [], [], [], lb, ub, [], options);

% displaying the solutions
disp('GA Solution:');
disp(x_sol);
