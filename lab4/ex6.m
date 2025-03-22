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
    if rank_A <= rank_AB
        fprintf("The system is INCOMPATIBLE! => there are no solutions\n");
    else
       if rank_A == n:
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