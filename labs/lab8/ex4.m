% ----------------
% ----- EX 4 -----
% ----------------

function [vy_linear, vy_cubic_regression] = interpolate_and_regress(Xi, Yi, vx)
    % ----- linear interpolation -----
    vy_linear = interp1(Xi, Yi, vx, 'linear');
    
    % ----- cubic regression (least squares fit) -----
    % Fit a 3rd order polynomial (cubic regression)
    p3 = polyfit(Xi, Yi, 3);
    
    % ----- evaluating the cubic polynomial at points vx -----
    vy_cubic_regression = polyval(p3, vx);
end


% ----- defining the data -----
Xi = [0 1 2 3 4 5 6];
Yi = [15 30 75 60 60 40 55];
vx = [0.5 3.2 5.7];

% ----- calling the function -----
[vy_linear, vy_cubic_regression] = interpolate_and_regress(Xi, Yi, vx);

% ----- displaying results -----
disp('Linear interpolation:');
disp(vy_linear);

disp('Cubic regression:');
disp(vy_cubic_regression);
