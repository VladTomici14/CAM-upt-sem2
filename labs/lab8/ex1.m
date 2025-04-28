% ----------------
% ----- EX 1 -----
% ----------------

Xi = [1, 2, 3];             % Given x-values
Yi = [2, 3, 5];             % Corresponding y-values
vx = [1.5, 2.5, 3.5];       % Points where interpolation is desired

vy = langrange(Xi, Yi, vx); % Perform interpolation

disp(vy);                   % Display the result