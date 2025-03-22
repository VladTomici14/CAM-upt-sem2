% ----------------
% ----- EX 1 -----
% ----------------

% a) 
% ----- setting the number ranges ----- 
t1 = -9:0.01:-3;
t2 = 3:0.01:9;
t3 = -3:0.01:3;

% ----- declaring the function for each range -----
y1 = sin(5 * t1);
y2 = sin(5 * t2);
y3 = cos(t3 )- cos(3) - sin(15);

% ----- plotting the functions -----
figure; hold on;
plot(t1, y1, 'b', 'LineWidth', 1.5);
plot(t2, y2, 'b', 'LineWidth', 1.5);
plot(t3, y3, 'r', 'LineWidth', 1.5);
xlabel('t'); ylabel('y(t)');
grid on;

% b)
% ----- setting the number range ----- 
t = -3:0.01:3;

% ----- declaring the functions-----
f = sin(pi * t) .* cos(pi * t);
g = sin(pi * t + 1) .* cos(pi * t + 1);

% ----- plotting the functions -----
figure; hold on;
plot(t, f, 'm--', 'LineWidth', 1.5); 
plot(t, g, 'c-s', 'LineWidth', 1.5, 'MarkerSize', 6);
xlabel('t'); ylabel('Function values');
grid on;
