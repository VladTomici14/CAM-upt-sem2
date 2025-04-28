% ----------------
% ----- EX 3 -----
% ----------------

% ----- defining the data -----
time = [0 1 2 3 4 5 6];
speed = [15 30 75 60 60 40 55];
t_dense = linspace(0, 6, 500);  % 500 points between 0 and 6

% ----- a) Linear interpolation ----- 
v_linear = interp1(time, speed, t_dense, 'linear');

% ----- b) Lagrange interpolation -----
v_lagrange = langrange(time, speed, t_dense);

% ----- c) Piecewise cubic Hermite interpolation (PCHIP) -----
v_pchip = interp1(time, speed, t_dense, 'pchip');

% ----- d) Cubic spline interpolation -----
v_spline = interp1(time, speed, t_dense, 'spline');

% ----- e) Parabolic regression (2nd order polynomial) -----
p2 = polyfit(time, speed, 2);
v_parabolic = polyval(p2, t_dense);

% ----- f) Least squares 5th order polynomial fit -----
p5 = polyfit(time, speed, 5);
v_poly5 = polyval(p5, t_dense);


% ----- starting the plotting -----
figure;
hold on;

% ----- plotting the original data points -----
plot(time, speed, 'ko', 'MarkerFaceColor', 'k', 'DisplayName', 'Data Points');

% ----- plotting each interpolation/approximation -----
plot(t_dense, v_linear, '-', 'DisplayName', 'Linear Interpolation');
plot(t_dense, v_lagrange, '-', 'DisplayName', 'Lagrange Interpolation');
plot(t_dense, v_pchip, '-', 'DisplayName', 'PCHIP');
plot(t_dense, v_spline, '-', 'DisplayName', 'Cubic Spline');
plot(t_dense, v_parabolic, '-', 'DisplayName', 'Parabolic Regression');
plot(t_dense, v_poly5, '-', 'DisplayName', '5th Order Polynomial');

% ----- customising the plot -----
xlabel('Time (sec)');
ylabel('Speed (m/s)');
title('Interpolation and Approximation of Vehicle Speed');
legend('Location', 'Best');
grid on;
hold off;
