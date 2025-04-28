% ----------------
% ----- EX 6 -----
% ----------------

function [min_sv, max_sv, cond_num] = analyzeMatrixCondition(A)

    % ----- validating the input matrix -----
    [rows, cols] = size(A);
    if rows ~= cols
        error('Input must be a square matrix');
    end
    
    % ----- computing the singular values of the matrix -----
    s = svd(A);
    
    % ----- extracting the min and the max singular values -----
    min_sv = min(s);
    max_sv = max(s);
    
    % ----- computing the condition number -----
    cond_num = max_sv / min_sv;
    
    % ----- displaying the results -----
    fprintf("Minimum singular value: %f\n", min_sv);
    fprintf("Maximum singular value: %f\n", max_sv);
    fprintf("Condition number: %f\n", cond_num);
    fprintf("\n");
end

% ----- testing the function -----
% example 1: well-conditioned matrix
A1 = [4 0; 0 2];  % Diagonal matrix
disp('Example 1: Well-conditioned diagonal matrix');
[min_sv1, max_sv1, cond_num1] = analyzeMatrixCondition(A1);
    
% example 2: moderately conditioned matrix
A2 = [4 2; 1 3];
disp('Example 2: Moderately conditioned 2x2 matrix');
[min_sv2, max_sv2, cond_num2] = analyzeMatrixCondition(A2);
    
% example 3: ill-conditioned matrix
A3 = [1 2 3; 4 5 6; 7 8 9.001];  % Nearly singular matrix
disp('Example 3: Nearly singular 3x3 matrix');
[min_sv3, max_sv3, cond_num3] = analyzeMatrixCondition(A3);
    
% example 4: very ill-conditioned (nearly singular) matrix
A4 = hilb(10); 
disp('Example 4: 10x10 Hilbert matrix (extremely ill-conditioned)');
[min_sv4, max_sv4, cond_num4] = analyzeMatrixCondition(A4);
    