% defining the equations
objective = @(x) norm([
    x(1)^7 - 5*x(1)^2*x(2)^4 + 1510;
    x(2)^5 - 3*x(1)^4 - 105
])^2;

lb = [1.5, 2.5];
ub = [2.5, 3.5];
x0 = [2.0, 3.0];

options = optimoptions('simulannealbnd', 'Display', 'iter');

% solving the system
[x_sol, fval] = simulannealbnd(objective, x0, lb, ub, options);

% displaying the solutions
disp('Simulated Annealing Solution:');
disp(x_sol);
