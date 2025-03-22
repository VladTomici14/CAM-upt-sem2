% -----------------
% ----- EX 10 -----
% -----------------

% ----- defining the variables -----
R = 6371;

% ----- generating sphere -----
[XS, YS, ZS] = sphere(50);
XS = XS * R; 
YS = YS * R; 
ZS = ZS * R;

% ----- plotting the sphere -----
figure;
hold on;
surf(XS, YS, ZS, 'FaceColor', 'blue', 'EdgeColor', 'none'); 
alpha(0.7); 

% ----- meridians & parallels -----
theta = deg2rad(0:15:360);
phi = deg2rad(-90:15:90); 

% ----- plot meridians -----
for i = 1:length(theta)
    x = R * cos(phi) * cos(theta(i));
    y = R * cos(phi) * sin(theta(i));
    z = R * sin(phi);
    plot3(x, y, z, 'k', 'LineWidth', 1.2); 
end

% ----- plot parallels -----
for j = 1:length(phi)
    x = R * cos(theta) * cos(phi(j));
    y = R * sin(theta) * cos(phi(j));
    z = R * sin(phi(j)) * ones(size(theta));
    plot3(x, y, z, 'k', 'LineWidth', 1.2); 
end

xlabel('X'); ylabel('Y'); zlabel('Z');
title('Earth with Meridians and Parallels (15° intervals)');
axis equal;
grid on;
hold off;

