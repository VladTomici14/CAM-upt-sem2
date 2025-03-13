%{
Write a Matlab function that accepts as argument a nonsingular square
matrix and returns the determinant and inverse of the matrix.
%}

% --- declaring the function ---
function [dt,inversed]=inversedCalculator(input_matrix)
    dt=det(input_matrix);
    if dt ~ 0
        inversed=inv(input_matrix);
    else 
        fprintf('singular matrix that cannot have an inverse!')
        inversed = [];
    end

end

% --- declaring the input matrix ---
my_matrix = [1 2 3; 4 5 6; 7 8 9];

% --- calling the function the matrix ---
[result_dt, result_inv]=inversedCalculator(my_matrix);

% --- printing the results --- 
fprintf('the calculated determinant is: %.2f\n', result_dt);

if result_dt ~ 0
    disp(result_inv);
end
