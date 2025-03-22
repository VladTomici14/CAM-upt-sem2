% ----------------
% ----- EX 7 -----
% ----------------

% ----- defining the number range -----
t=linspace(-10 * pi, 10* pi, 1000);

% ----- defining the spiral axis functions -----
x = t 
y = sin(0.5 * t - 3)
z = cos(0.5 * t)

% ----- plotting the spiral -----
figure;
plot3(x, y, z, 'm', 'LineWidth', 1.5); 
xlabel('X'); ylabel('Y'); zlabel('Z');
grid on;