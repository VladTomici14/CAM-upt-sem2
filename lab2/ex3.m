%{
Write a Matlab function that receives a matrix with at least 4 lines and 4
columns as argument and displays the results of the following matrix elements
extraction operations:
    - the third line;
    - the last column;
    - the last line;
    - the submatrix determined by the lines 2-4 and columns 1-3.
%}

% --- declaring the function ---
function matrixOperations(input_matrix)
    % printing the third line from the input matrix
    fprintf("the third line: ");
    disp(input_matrix(3, :));

    % printing the last column from the input matrix
    fprintf("the last column: ");
    disp(input_matrix(:, end));

    % printing the last line from the input matrix
    fprintf("the last line: ");
    disp(input_matrix(end, :));

    % printing the submatrix
    fprintf("the submatrix determined by lines 2-4 and columns 1-3: \n");
    disp(input_matrix(2:4, 1:3));
end

% --- declaring the matrix --- 
my_matrix = [1 2 3 4; 5 6 7 8; 9 10 11 12; 13 14 15 16];

% --- calling the function --- 
matrixOperations(my_matrix);