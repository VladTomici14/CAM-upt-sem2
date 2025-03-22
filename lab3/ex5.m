% ----------------
% ----- EX 5 -----
% ----------------

% ----- writing all the point coordinates in 2 arrays ----- 
x=[5 -7 -7 5 5]; 
y=[4 4 -3 -3 4];

% ----- plotting the rectangles -----
figure; 
plot(x, y, 'y', 'LineWidth', 2);
fill(x, y, 'b');
xlabel('X'); ylabel('Y');
grid on; axis equal; 
