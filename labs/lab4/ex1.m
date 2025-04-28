% ----------------
% ----- EX 1 -----
% ----------------

% ----- defining the corresponding matrices -----
A = [4 3 -1; -1 1 1; 1 0 3];
B = [2; 0; -1];

% ----- checking if the system is compatible / determined -----
rank_A = rank(A); 
rank_AB = rank([A B]);

if rank_A == rank_AB
    fprintf("The system is compatible!\n");

    if rank_A == size(A, 2)
        fprintf("The system is determined with an unique solution!\n");
        
        % solving the system 
        x = A \ B; 

        % displaying the solutions
        fprintf("\tx = %.4f\n", x(1));
        fprintf("\ty = %.4f\n", x(2));
        fprintf("\tz = %.4f\n", x(3));
    end
else
    fprintf("The system is incompatible with no solutions!");
end
