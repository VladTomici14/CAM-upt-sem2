% ----------------
% ----- EX 3 -----
% ----------------

% ----- defining function ----- 
function solveLinearSystem(A, B)
    % ----- getting matrix dimensions ----- 
    [m, n] = size(A); 

    % ----- computing the ranks ----- 
    rank_A = rank(A);
    rank_AB = rank([A B]);

    % ----- checking compability -----
    if rank_A ~= rank_AB
        fprintf("The system is INCOMPATIBLE! => there are no solutions\n");
    elseif rank_A == n
        fprintf("The system is COMPATIBLE and DETERMINED => there is one unique solution\n"); 

        % ----- solving the system -----
        x = A \ B; 

        % ----- displaying the solution -----
        for i=1:n
            fprintf("x%d = %.6f\n", i, x(i));
        end

        % ----- verifying solution -----
        residual = norm(A * x - B); 

        if residual < 1e-10
            fprintf("Solution verified: Ax - b = 0\n");
        else
            fprintf("Warning: solution has non-zero residual\n");
        end

    else

        fprintf("The system is COMPATIBLE and UNDETERMINED => infinitely many solutions exist\n");

        % ----- finding a particular solution -----
        x_min = pinv(A) * B; 
        for i=1:n
            fprintf("x%d = %.6f\n", i, x_min(i))
        end

        % ----- computing the null space basis -----
        Z = null(A);

        % ----- displaying the general solution form -----
         for i = 1:n
            fprintf("x%d = %.6f", i, x_min(i));
            for j = 1:size(Z,2)
                if Z(i,j) >= 0
                    fprintf(" + %.6f * t%d", Z(i,j), j);
                else
                    fprintf(" - %.6f * t%d", abs(Z(i,j)), j);
                end
            end
            fprintf('\n');
        end
        fprintf('where t1, t2, ... t%d are arbitrary real parameters\n', n - rank_A);
        
        % ----- verifying the solutions -----
        residual = norm(A * x_min - B);
        fprintf('\nResidual norm for particular solution: %.10e\n', residual);
    end
end

% ----- test scenario 1 -----
A1 = [4 3 -1; -1 1 1; 1 0 3];
b1 = [2; 0; -1];
fprintf('EXAMPLE 1: Compatible and determined system\n');
fprintf('=============================================\n');
solveLinearSystem(A1, b1);

% ----- test scenario 2 -----
A2 = [-6 8 -1; 2 -3 0];
b2 = [-5; 7];
fprintf('\n\nEXAMPLE 2: Compatible and undetermined system\n');
fprintf('===========================================w==\n');
solveLinearSystem(A2, b2);

% ----- test scenario 3 -----
A3 = [1 2; 2 4; 3 6];
b3 = [1; 3; 4];
fprintf('\n\nEXAMPLE 3: Incompatible system\n');
fprintf('============================\n');
solveLinearSystem(A3, b3)