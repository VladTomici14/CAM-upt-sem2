% ----------------
% ----- EX 2 -----
% ----------------

% ----- defining a function which solved both exercises ----- 
function approximationComputing(A, B)
    % ----- computing the rank -----
    rank_A = rank(A);
    
    % ----- computing the approximate solution ----- 
    x = A \ B;
    
    % ----- displaying the solution -----
    fprintf('Approximate solution:\n');
    fprintf('   x = %.6f\n', x(1));
    fprintf('   y = %.6f\n', x(2));
    fprintf('   z = %.6f\n', x(3));
    
    % ----- computing the residual to see how good the approximation is ----- 
    residual = norm(A * x - B);
    fprintf('Residual norm: %.6f\n\n', residual);
end

% a) 
% ----- defining the corresponding matrices -----
A_a = [4 3 -1; -1 1 1; 1 0 3; 4 4 3]; 
B_a = [2; 0; -1; 1];

fprintf("a)\n");
approximationComputing(A_a, B_a);


% b) 
% ----- defining the corresponding matrices -----
A_b = [-6 8 -1; 2 -3 0];
B_b = [-5; 7];

fprintf("b)\n");
approximationComputing(A_b, B_b);