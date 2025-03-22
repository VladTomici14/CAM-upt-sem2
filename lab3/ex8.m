% ----------------
% ----- EX 8 -----
% ----------------

% ----- defining the ranges -----
t=-3:0.1:3;

% ----- defining the function ----- 
[x, y] = meshgrid(t, t);
z = x.^3 - 3*x .* y.^2;

% ----- plotting the results ----- 
figure; 
subplot(2,2,1);
plot3(x, y, z, 'k'); title('3D plot');

% mesh plotting
subplot(2,2,2);
mesh(x, y, z); title('mesh');

% surf plotting
subplot(2,2,3);
surf(x, y, z); title('surf');

% surfl plotting
subplot(2,2,4);
surfl(x, y, z); shading interp; title('surfl');