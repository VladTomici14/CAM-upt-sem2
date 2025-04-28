% For f(x)
f = @(x) abs(x.^5 + 5.*x + 1);
root_f = fminbnd(f, -1, 0);

% For g(x)
g = @(x) abs(atan(x) + atan(10.*x) - 0.75);
root_g = fminbnd(g, 0, 1);

fprintf('Root of f(x) via fminbnd: %.6f\n', root_f);
fprintf('Root of g(x) via fminbnd: %.6f\n', root_g);
