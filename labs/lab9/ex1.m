% ----------------
% ----- EX 1 -----
% ----------------

% ----- generating x_j -----
j = 1:11;
xj = -1.1 + 0.1 * j;

% ----- computing f(x_j) -----
fxj = (j .* xj.^2) ./ (xj - 1) - (2 ./ (j + 1));

% ----- approximating the integral using the trapezoidal rule -----
I = trapz(xj, fxj);

% ----- displaying the result -----
fprintf('The approximate value of the integral is: %.6f\n', I);
