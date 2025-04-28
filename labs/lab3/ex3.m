% ----------------
% ----- EX 3 -----
% ----------------

% ----- setting the range -----
t = linspace(1, 5, 100);

% ----- setting the function -----
f = exp3 * t);

% ----- plotting the results -----
figure;
semilogy(t, f, 'r', 'LineWidth', 1.5);
xlabel('t'); ylabel('f(t)');
grid on;