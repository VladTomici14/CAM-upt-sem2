% ----------------
% ----- EX 2 -----
% ----------------

function real_solutions = solveRealRoots(coefficients)
    % ----- validating the input -----
    if ~isvector(coefficients)
        error('Coefficients must be provided as a vector');
    end

    % ----- if all coefficients are zero, any value of x is a solution -----
    if all(coefficients == 0)
        warning('All coefficients are zero. The equation is satisfied by any value of x.');
        real_solutions = Inf; 
        return;
    end
    
    % ----- finding all roots -----
    all_roots = roots(coefficients);
    
    % ----- extracting all real roots -----
    real_roots_indices = abs(imag(all_roots)) < 1e-10;
    real_solutions = real(all_roots(real_roots_indices));
    
    % ----- sorting the solutions in ascending order -----
    real_solutions = sort(real_solutions);
end

% ----- running some examples -----
% Example 1: Quadratic equation with 2 real roots
disp('Example 1: x^2 - 5x + 6 = 0');
sols1 = solveRealRoots([1 -5 6]);
disp(['Solutions: ', num2str(sols1')]);
fprintf("\n");
    
% Example 2: Cubic equation with 3 real roots
disp('Example 2: x^3 - 6x^2 + 11x - 6 = 0');
sols2 = solveRealRoots([1 -6 11 -6]);
disp(['Solutions: ', num2str(sols2')]);
fprintf("\n");
    
% Example 3: Equation with no real roots
disp('Example 3: x^2 + 1 = 0');
sols3 = solveRealRoots([1 0 1]);
disp(['Solutions: ', num2str(sols3')]);
fprintf("\n");

% Example 4: Higher degree equation
disp('Example 4: x^4 - 1 = 0');
sols4 = solveRealRoots([1 0 0 0 -1]);
disp(['Solutions: ', num2str(sols4')]);
fprintf("\n");
