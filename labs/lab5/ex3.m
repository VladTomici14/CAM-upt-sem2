% ----------------
% ----- EX 3 -----
% ----------------

function large_modulus_solutions = findLargeModulusSolutions(coefficients)
    
    % ----- checking if all coefficients are zero -----
    if all(coefficients == 0)
        error('All coefficients are zero. The equation has infinitely many solutions.');
    end
    
    % ----- finding all the roots from the coefficients -----
    all_solutions = roots(coefficients);
    
    % ----- computing the absolute value of each solution -----
    moduli = abs(all_solutions);
    
    % ----- filtering solutions that have the modulus greater than 1 -----
    large_modulus_indices = moduli > 1;
    large_modulus_solutions = all_solutions(large_modulus_indices);
    
    % ----- displaying all solutions with their moduli -----
    if ~isempty(large_modulus_solutions)
        fprintf('\nSolutions with modulus > 1:\n');
        fprintf('-----------------------------\n');
        fprintf('   Solution                   Modulus\n');
        fprintf('-----------------------------\n');
        for i = 1:length(large_modulus_solutions)
            sol = large_modulus_solutions(i);
            mod_val = abs(sol);
            
            if imag(sol) >= 0
                sol_str = sprintf('%.6f + %.6fi', real(sol), imag(sol));
            else
                sol_str = sprintf('%.6f - %.6fi', real(sol), abs(imag(sol)));
            end
            
            fprintf('   %-25s   %.6f\n', sol_str, mod_val);
        end
    end
    
end

% Helper function to format complex numbers as strings
function str = complexToString(z)
    if imag(z) >= 0
        str = sprintf('%.4f + %.4fi', real(z), imag(z));
    else
        str = sprintf('%.4f - %.4fi', real(z), abs(imag(z)));
    end
end

% ----- examples testing -----
% Example 1: Quadratic equation with complex roots
disp('Example 1: x^2 + 1 = 0');
coeffs1 = [1 0 1];
sols1 = findLargeModulusSolutions(coeffs1);
    
% Example 2: Cubic equation with both real and complex roots
disp('Example 2: x^3 - 2x^2 + 2x - 1 = 0');
coeffs2 = [1 -2 2 -1];
sols2 = findLargeModulusSolutions(coeffs2);
    
% Example 3: Equation with complex roots of mixed moduli
disp('Example 3: x^4 - 3x^3 + 4x^2 - 3x + 1 = 0');
coeffs3 = [1 -3 4 -3 1];
sols3 = findLargeModulusSolutions(coeffs3);
    
% Example 4: Equation with only small modulus roots
disp('Example 4: x^2 - 0.5x + 0.1 = 0');
coeffs4 = [1 -0.5 0.1];
sols4 = findLargeModulusSolutions(coeffs4);
    
% Example 5: Higher degree equation
disp('Example 5: x^5 - 10x^3 + 9 = 0');
coeffs5 = [1 0 -10 0 0 9];
sols5 = findLargeModulusSolutions(coeffs5);
