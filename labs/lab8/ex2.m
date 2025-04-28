% ----------------
% ----- EX 2 -----
% ----------------

% ----- defining the data -----
time = [0 1 2 3 4 5 6];
speed = [15 30 75 60 60 40 55];
t_interp = [0.5 3.2 5.7];

% ----- a) Linear Interpolation -----
v_linear = interp1(time, speed, t_interp, 'linear');
disp('a) Linear interpolation:');
disp(v_linear);

% ----- b) Lagrance Polynomial Interpolation -----
v_lagrange = langrange(time, speed, t_interp);
disp('b) Lagrange interpolation:');
disp(v_lagrange);

% ----- c) Piecewise Cubic Hermite Interpolation Polynomial -----
v_pchip = interp1(time, speed, t_interp, 'pchip');
disp('c) Piecewise cubic Hermite interpolation (PCHIP):');
disp(v_pchip);

% ----- d) Cubic Spline Interpolation -----
v_spline = interp1(time, speed, t_interp, 'spline');
disp('d) Cubic spline interpolation:');
disp(v_spline);

% ----- e) Parabolic Regression -----
p2 = polyfit(time, speed, 2);         % Fit a 2nd order polynomial
v_parabolic = polyval(p2, t_interp);  % Evaluate at the interpolation points
disp('e) Parabolic regression (2nd order polynomial fit):');
disp(v_parabolic);

% ----- f) Least Squares 5h Order Polynomial Fit-----
p5 = polyfit(time, speed, 5);         % Fit a 5th order polynomial
v_poly5 = polyval(p5, t_interp);      % Evaluate at the interpolation points
disp('f) Least squares 5th order polynomial fit:');
disp(v_poly5);

