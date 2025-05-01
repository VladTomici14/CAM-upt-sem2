syms x1 x2

% defining the equations
eq1 = x1^7 - 5*x1^2*x2^4 + 1510 == 0;
eq2 = x2^5 - 3*x1^4 - 105 == 0;

% solving the system
sol = vpasolve([eq1, eq2], [x1, x2], [1.5, 2.5; 2.5, 3.5]);

% displaying the solutions
disp('Symbolic solution:');
disp([double(sol.x1), double(sol.x2)]);
