% first function
f = @(x) x.^5 + 5.*x + 1;

root_f = fzero(f, [-1, 0]);
fprintf('Root of f(x): %.6f\n', root_f);

% second function 
g = @(x) atan(x) + atan(10.*x) - 0.75;

root_g = fzero(g, [0, 1]);
fprintf('Root of g(x): %.6f\n', root_g);
