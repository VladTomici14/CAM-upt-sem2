% ----------------
% ----- EX 2 -----
% ----------------

% ----- defining the function -----
f = @(x) 1 ./ (sin(x) + cos(x));

% ----- defining the ----- 
a = pi/3;
b = pi/2;

% ----- computing the integral -----
I = integral(f, a, b);

% ----- displaying the result -----
fprintf('The value of the integral is: %.6f\n', I);
