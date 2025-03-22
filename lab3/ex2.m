% ----------------
% ----- EX 2 -----
% ----------------

% ----- setting the number range -----
t = linspace(0, 6*pi, 1000);

% ----- declaring the function -----
r = sqrt(sin(t) + t.^2);

% ----- plotting the results -----
figure;
polarplot(t, r, 'b', 'LineWidth', 1.5);
grid on;