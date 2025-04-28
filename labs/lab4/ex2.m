% ----------------
% ----- EX 2 -----
% ----------------

% ----- defining a function which solved both exercises ----- 
function approximationComputing(A, B)
    % ----- computing the rank -----
    rank_A = rank(A);
    
    fprintf("Rank: %.4f\n", rank_A); 

    % ----- computing the approximate solution ----- 
    x = A \ B;
    
    % ----- displaying the solution -----
    fprintf("Approximate solution:\n");
    fprintf("\tx = %.4f\n", x(1));
    fprintf("\ty = %.4f\n", x(2));
    fprintf("\tz = %.4f\n", x(3));
    
end

% a) 
% ----- defining the corresponding matrices -----
A_a = [4 3 -1; -1 1 1; 1 0 3; 4 4 3]; 
B_a = [2; 0; -1; 1];

fprintf("a) ");
approximationComputing(A_a, B_a);


% b) 
% ----- defining the corresponding matrices -----
A_b = [-6 8 -1; 2 -3 0];
B_b = [-5; 7];

fprintf("\nb) ");
approximationComputing(A_b, B_b);