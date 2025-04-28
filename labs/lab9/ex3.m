% ----------------
% ----- EX 3 -----
% ----------------

% ----- a) -----
f = @(x, y) 3*x - y.^2; % Notice element-wise .^ for y^2
xspan = [-1 5];
y0 = 2;

[xa, ya] = ode45(f, xspan, y0);

figure;
plot(xa, ya, 'DisplayName', 'Part (a)');
hold on;
grid on;
xlabel('x');
ylabel('y');
title('Solutions to Cauchy Problems');

% ----- b) -----
f = @(t, Y) [Y(2); Y(2) + 2*Y(1)*sin(t)];
tspan = [0 6];
Y0 = [-1; 2];

[tb, Yb] = ode45(f, tspan, Y0);

plot(tb, Yb(:,1), 'DisplayName', 'Part (b)');

% ----- c) -----
f = @(x, Y) [Y(2);
             Y(3);
             Y(3) - x*Y(2) + 2*Y(1)*sin(x) - x.^3];
xspan = [1 4];
Y0 = [0.5; -0.5; 0.3];

[xc, Yc] = ode45(f, xspan, Y0);

plot(xc, Yc(:,1), 'DisplayName', 'Part (c)');

% ----- d) -----
f = @(t, Y) [-2*Y(1) + Y(2) - 2*Y(3) + sin(t);
             -2*Y(2) + Y(1) + 2*Y(3) - cos(t);
              5*Y(3) + 3*Y(1) - 3*Y(2)];
tspan = [0 3];
Y0 = [0; 0.2; -0.1];

[td, Yd] = ode45(f, tspan, Y0);

plot(td, Yd(:,1), 'DisplayName', 'x (Part d)');
plot(td, Yd(:,2), '--', 'DisplayName', 'y (Part d)');
plot(td, Yd(:,3), ':', 'DisplayName', 'z (Part d)');
legend show;
