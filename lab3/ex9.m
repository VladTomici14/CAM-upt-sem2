% ----------------
% ----- EX 9 -----
% ----------------

% --------- Truncated Cone ---------
figure;
hold on;
rc1 = 2; % Bottom radius
rc2 = 1; % Top radius
h = 3;   % Height
th = linspace(0, 2*pi, 30); % Theta angles

% Bottom circle
x1 = rc1 * cos(th);
y1 = rc1 * sin(th);
z1 = zeros(size(th));

% Top circle
x2 = rc2 * cos(th);
y2 = rc2 * sin(th);
z2 = h * ones(size(th));

% Mesh grid for lateral surface
[X, Y, Z] = meshgrid(linspace(-rc1, rc1, 30), linspace(-rc1, rc1, 30), linspace(0, h, 30));

% Plot bottom and top circles
fill3(x1, y1, z1, 'r'); % Bottom base
fill3(x2, y2, z2, 'b'); % Top base

% Connect lateral surface
for i = 1:length(th)-1
    fill3([x1(i), x2(i), x2(i+1), x1(i+1)], ...
          [y1(i), y2(i), y2(i+1), y1(i+1)], ...
          [z1(i), z2(i), z2(i+1), z1(i+1)], 'c');
end

xlabel('X'); ylabel('Y'); zlabel('Z');
title('Truncated Cone');
axis equal;
grid on;
hold off;

% --------- Hexagonal Pyramid ---------
figure;
hold on;
rp = 3; % Hexagon inscribed circle radius

% Compute hexagon vertices
hex_theta = linspace(0, 2*pi, 7); % 6 sides + closing point
hex_x = rp * cos(hex_theta);
hex_y = rp * sin(hex_theta);
hex_z = zeros(size(hex_x));

% Peak of the pyramid
px = 0; py = 0; pz = h;

% Draw hexagonal base
fill3(hex_x, hex_y, hex_z, 'g');

% Draw triangular faces
for i = 1:length(hex_theta)-1
    fill3([hex_x(i), hex_x(i+1), px], ...
          [hex_y(i), hex_y(i+1), py], ...
          [hex_z(i), hex_z(i+1), pz], 'y');
end

xlabel('X'); ylabel('Y'); zlabel('Z');
title('Hexagonal Pyramid');
axis equal;
grid on;
hold off;
