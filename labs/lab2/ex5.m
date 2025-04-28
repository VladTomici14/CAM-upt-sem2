%{
Write a Matlab function that receives as argument a square matrix and
displays the transposed, the rank and the determinant of the matrix.
%}

% --- declaring the function which calculates the transpoed, rank and
% determinant of a square matrix ---
function [trnsp,rnk,dtrm]=matrixCalculator(input_square_matrix)
    trnsp=input_square_matrix';
    rnk=rank(input_square_matrix);
    dtrm=det(input_square_matrix);

end

% --- declaring the square matrix --- 
square_matrix = [1 2 3; 4 5 6; 7 8 9];

% --- calling the function --- 
[tr,rn,dt]=matrixCalculator(square_matrix);

% --- displaying the results ---
fprintf('transposed:\n');
disp(tr)
fprintf('rank: %.2f\n', rn);
fprintf('determinant: %.2f\n', dt);
