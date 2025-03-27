% ----------------
% ----- EX 6 -----
% ----------------

function classifyLinearSystem(A, B)

    % ----- getting dimensions -----
    [m, n] = size(A); 

    % ----- computing ranks -----
    rank_A = rank(A);
    rank_AB = rank([A B]);

    % ----- classifying the system -----
    if rank_A < rank_AB
        fprintf("The system is INCOMPATIBLE! => there are no solutions\n");
    else
       if rank_A == n
            fprintf("The system is COMPATIBLE and DETERMINED! => a unique solution exists\n");

            % ----- computing the solution -----
            x = A \ B; 
            fprintf("Solution:\n");
            for i=1:n
                fprintf('x%d = %.6f\n', i, x(i));
            end
       else
            fprintf("The system is COMPATIBLE and UNDETERMINED!\n");
       end
    end
end


% ----- test scenario 1 -----
A1 = [4 3 -1; -1 1 1; 1 0 3];
b1 = [2; 0; -1];
fprintf("EXAMPLE 1: (Compatible and determined system)\n");
fprintf("=============================================\n");
classifyLinearSystem(A1, b1);

% ----- test scenario 2 -----
A2 = [-6 8 -1; 2 -3 0];
b2 = [-5; 7];
fprintf("\n\nEXAMPLE 2: (Compatible and undetermined system)\n");
fprintf("===========================================w==)\n");
classifyLinearSystem(A2, b2);

% ----- test scenario 3 -----
A3 = [1 2; 2 4; 3 6];
b3 = [1; 3; 4];
fprintf("\n\nEXAMPLE 3: (Incompatible system)\n");
fprintf("============================\n");
classifyLinearSystem(A3, b3);