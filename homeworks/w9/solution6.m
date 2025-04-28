% Bisection Method for f(x)
f = @(x) x.^5 + 5.*x + 1;
a = -1; b = 0; tol = 1e-6;
while (b - a)/2 > tol
    c = (a + b)/2;
    if f(c) == 0
        break
    elseif sign(f(c)) == sign(f(a))
        a = c;
    else
        b = c;
    end
end
root_f = (a + b)/2;
fprintf('Root of f(x) by bisection: %.6f\n', root_f);

% Define g(x)
g = @(x) atan(x) + atan(10.*x) - 0.75;

% Initial interval [0, 1]
a = 0; 
b = 1; 
tol = 1e-6; % Tolerance

% Bisection loop
while (b - a)/2 > tol
    c = (a + b)/2;
    if g(c) == 0
        break % Found exact root
    elseif sign(g(c)) == sign(g(a))
        a = c;
    else
        b = c;
    end
end

% Approximate root
root_g = (a + b)/2;

fprintf('Root of g(x) by bisection: %.6f\n', root_g);

