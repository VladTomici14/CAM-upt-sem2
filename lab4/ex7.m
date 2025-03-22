% ----------------
% ----- EX 7 -----
% ----------------

% ----- declaring the corresponding matrices -----
A = [-6 8 -1; 2 -3 0];
B = [-5; 7];

% ----- extracting the size ----- 
[m, n] = size(A);

% ----- displaying the system information -----
for i = 1:m
    eq_str = '';
    for j = 1:n
        if A(i,j) ~= 0
            if A(i,j) > 0 && ~isempty(eq_str)
                eq_str = [eq_str, ' + '];
            elseif A(i,j) < 0
                eq_str = [eq_str, ' - '];
            end
            
            if abs(A(i,j)) == 1
                eq_str = [eq_str, sprintf('x%d', j)];
            else
                eq_str = [eq_str, sprintf('%.1f*x%d', abs(A(i,j)), j)];
            end
        end
    end
    eq_str = [eq_str, sprintf(' = %.1f', b(i))];
    fprintf('Equation %d: %s\n', i, eq_str);
end

% Check ranks to verify system classification
rank_A = rank(A);
rank_Ab = rank([A b]);
fprintf('\nRank of coefficient matrix: %d\n', rank_A);
fprintf('Rank of augmented matrix: %d\n', rank_Ab);

if rank_A == rank_Ab && rank_A < n
    fprintf('\nConfirmed: The system is compatible and undetermined.\n');
    
    % Find a particular solution using pseudoinverse
    fprintf('\nParticular solution using the minimum norm method (pseudoinverse):\n');
    x_min_norm = pinv(A) * b;
    for i = 1:n
        fprintf('x%d = %.6f\n', i, x_min_norm(i));
    end
    
    % Check solution
    residual = norm(A*x_min_norm - b);
    fprintf('Residual norm: %.10f\n', residual);
    
    % Calculate null space basis
    Z = null(A);
    fprintf('\nNull space basis vectors:\n');
    disp(Z);
    
    % Express general solution
    fprintf('\nGeneral solution form:\n');
    for i = 1:n
        fprintf('x%d = %.6f', i, x_min_norm(i));
        for j = 1:size(Z,2)
            if Z(i,j) >= 0
                fprintf(' + %.6f*t%d', Z(i,j), j);
            else
                fprintf(' - %.6f*t%d', abs(Z(i,j)), j);
            end
        end
        fprintf('\n');
    end
    fprintf('where t1, t2, ... are arbitrary real parameters\n');
    
    % Visualize solution space if 3D or less
    if n <= 3 && size(Z,2) == 1
        fprintf('\nThe solution space is a line in %dD space.\n', n);
        
        % Generate and plot points along the solution line
        t_values = -2:0.2:2;
        solution_points = zeros(length(t_values), n);
        
        for i = 1:length(t_values)
            solution_points(i,:) = x_min_norm + Z*t_values(i);
        end
        
        if n == 2
            figure;
            plot(solution_points(:,1), solution_points(:,2), 'b-', 'LineWidth', 2);
            hold on;
            plot(x_min_norm(1), x_min_norm(2), 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r');
            grid on;
            xlabel('x1');
            ylabel('x2');
            title('Solution Space for Undetermined System');
            legend('Solution Line', 'Minimum Norm Solution');
        elseif n == 3
            figure;
            plot3(solution_points(:,1), solution_points(:,2), solution_points(:,3), 'b-', 'LineWidth', 2);
            hold on;
            plot3(x_min_norm(1), x_min_norm(2), x_min_norm(3), 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r');
            grid on;
            xlabel('x1');
            ylabel('x2');
            zlabel('x3');
            title('Solution Space for Undetermined System');
            legend('Solution Line', 'Minimum Norm Solution');
        end
    elseif n <= 3 && size(Z,2) == 2
        fprintf('\nThe solution space is a plane in 3D space.\n');
        % Code for visualizing a plane would go here if needed
    else
        fprintf('\nThe solution space is a %d-dimensional subspace that cannot be easily visualized.\n', size(Z,2));
    end
    
    % Alternative particular solutions
    fprintf('\nAlternative particular solutions:\n');
    
    % Solution with x1 = 0
    fprintf('\n1. Setting x1 = 0:\n');
    reduced_A = A(:,2:end);
    if rank(reduced_A) == rank_A
        reduced_x = reduced_A \ b;
        x_alt1 = [0; reduced_x];
        for i = 1:n
            fprintf('x%d = %.6f\n', i, x_alt1(i));
        end
        residual = norm(A*x_alt1 - b);
        fprintf('Residual norm: %.10f\n', residual);
    else
        fprintf('Cannot set x1 = 0 as it would make the system incompatible.\n');
    end
    
    % Solution with last variable = 0
    fprintf('\n2. Setting x%d = 0:\n', n);
    reduced_A = A(:,1:n-1);
    if rank(reduced_A) == rank_A
        reduced_x = reduced_A \ b;
        x_alt2 = [reduced_x; 0];
        for i = 1:n
            fprintf('x%d = %.6f\n', i, x_alt2(i));
        end
        residual = norm(A*x_alt2 - b);
        fprintf('Residual norm: %.10f\n', residual);
    else
        fprintf('Cannot set x%d = 0 as it would make the system incompatible.\n', n);
    end
else
    fprintf('\nThe system is not compatible and undetermined. Please check your inputs.\n');
end