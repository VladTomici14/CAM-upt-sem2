% ----------------
% ----- EX 5 -----
% ----------------


% P4.5 - Systems of linear parameter equations
% Using symbolic math toolbox to solve parameterized systems

% Define symbolic variables
syms x y z alpha beta gamma
syms a b c p q

% Part a) ---------------
fprintf('Part a) Solution\n');
fprintf('================\n');

% Define the coefficient matrix and constants vector
A_a = [alpha, -beta, 1; 
      -gamma, 1, beta; 
      1, gamma, -alpha];
b_a = [gamma; alpha; beta];

% Display the system
fprintf('System of equations:\n');
disp('α*x - β*y + z = γ');
disp('-γ*x + y + β*z = α');
disp('x + γ*y - α*z = β');

% Solve the system symbolically
sol_a = solve(A_a*[x; y; z] == b_a, [x, y, z]);

% Display solutions
fprintf('\nSolutions:\n');
fprintf('x = '); disp(simplify(sol_a.x));
fprintf('y = '); disp(simplify(sol_a.y));
fprintf('z = '); disp(simplify(sol_a.z));

% Determine conditions for existence of unique solutions
det_A = det(A_a);
fprintf('\nDeterminant of coefficient matrix = '); disp(simplify(det_A));
fprintf('For a unique solution to exist, this determinant must be non-zero.\n');

% Part b) ---------------
fprintf('\n\nPart b) Solution\n');
fprintf('================\n');

% Define the coefficient matrix and constants vector
A_b = [a, -b, 0; 
      -b, b, -c; 
      0, c, a];
b_b = [p; -2*q; p+q];

% Display the system
fprintf('System of equations:\n');
disp('a*x - b*y = p');
disp('-b*x + b*y - c*z = -2q');
disp('c*y + a*z = p + q');

% Solve the system symbolically
sol_b = solve(A_b*[x; y; z] == b_b, [x, y, z]);

% Display solutions
fprintf('\nSolutions:\n');
fprintf('x = '); disp(simplify(sol_b.x));
fprintf('y = '); disp(simplify(sol_b.y));
fprintf('z = '); disp(simplify(sol_b.z));

% Determine conditions for existence of unique solutions
det_B = det(A_b);
fprintf('\nDeterminant of coefficient matrix = '); disp(simplify(det_B));
fprintf('For a unique solution to exist, this determinant must be non-zero.\n');

% Additional analysis to find specific parameter values where solutions don't exist
fprintf('\nAnalyzing special cases and conditions:\n');

% For part a, analyze when det_A = 0
sol_det_a = solve(det_A == 0, alpha);
fprintf('Part a) Determinant is zero when alpha = '); disp(sol_det_a);

% For part b, analyze when det_B = 0
fprintf('Part b) Determinant is zero when: '); disp(simplify(det_B == 0));

% Verification
fprintf('\nVerification for part a):\n');
subs_A = subs(A_a*[sol_a.x; sol_a.y; sol_a.z], [x,y,z], [sol_a.x, sol_a.y, sol_a.z]);
verification_a = simplify(subs_A - b_a);
disp(verification_a);

fprintf('\nVerification for part b):\n');
subs_B = subs(A_b*[sol_b.x; sol_b.y; sol_b.z], [x,y,z], [sol_b.x, sol_b.y, sol_b.z]);
verification_b = simplify(subs_B - b_b);
disp(verification_b);