[x1_grid, x2_grid] = meshgrid(1.5:0.01:2.5, 2.5:0.01:3.5);

residual = arrayfun(@(x1, x2) ...
    norm([
        x1^7 - 5*x1^2*x2^4 + 1510;
        x2^5 - 3*x1^4 - 105
    ]), x1_grid, x2_grid);

[min_val, idx] = min(residual(:));

[row, col] = ind2sub(size(residual), idx);
x1_best = x1_grid(row, col);
x2_best = x2_grid(row, col);

fprintf('Best solution from grid search:\nx1 = %.4f, x2 = %.4f\nResidual = %.4f\n', ...
    x1_best, x2_best, min_val);
