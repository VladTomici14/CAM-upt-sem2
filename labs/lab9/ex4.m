% ----------------
% ----- EX 4 -----
% ----------------

% ----- a) -----
xq_a = [-1, -0.5, 0, 1, 2.3, 5];

% ----- interpolating -----
yq_a = interp1(xa, ya, xq_a);

% ----- displaying -----
disp('Approximate values for P9.3.a:');
disp(table(xq_a', yq_a', 'VariableNames', {'x', 'y'}));


% ----- b) -----
xq_b = [0, 1.5, 2.3, 3.7, 4, 5.45, 6];

% ----- interpolating ----- (solution is Yb(:,1) = y)
yq_b = interp1(tb, Yb(:,1), xq_b);

disp('Approximate values for P9.3.b:');
disp(table(xq_b', yq_b', 'VariableNames', {'t', 'y'}));


% ----- c) -----
xq_c = [1, 2.2, 3.5, 4];

% ----- interpolating ----- (solution is Yc(:,1) = y)
yq_c = interp1(xc, Yc(:,1), xq_c);

disp('Approximate values for P9.3.c:');
disp(table(xq_c', yq_c', 'VariableNames', {'x', 'y'}));


% ----- d) -----
xq_d = [0, 0.75, 1.1, 1.16, 2, 3];

% ----- interpolating x, y, and z -----
xq_d_1 = interp1(td, Yd(:,1), xq_d); % x(t)
xq_d_2 = interp1(td, Yd(:,2), xq_d); % y(t)
xq_d_3 = interp1(td, Yd(:,3), xq_d); % z(t)

disp('Approximate values for P9.3.d:');
disp(table(xq_d', xq_d_1', xq_d_2', xq_d_3', ...
    'VariableNames', {'t', 'x', 'y', 'z'}));

