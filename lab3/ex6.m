% ----------------
% ----- EX 6 -----
% ----------------

% ----- computing the circle points ----- 
theta = linspace(0, 2*pi, 1000);
x_circ = 3 * cos(theta);
y_circ = 3 * sin(theta);

% ----- computing the ellipse points ----- 
x_ell = 4 * cos(theta);
y_ell = 2 * sin(theta);

% ----- plotting the results -----
figure; hold on;
plot(x_circ, y_circ, 'r', 'LineWidth', 2);
plot(x_ell, y_ell, 'b', 'LineWidth', 2);
xlabel('X'); ylabel('Y');
grid on; axis equal;
