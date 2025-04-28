% ----------------
% ----- EX 1 -----
% ----------------

function newton_nonlinear_system()
    % ----- initial guess -----
    x = 1;
    y = 1;
    
    % ----- tolerance and max iterations -----
    tol = 1e-6;
    max_iter = 20;
    
    for iter = 1:max_iter
        % ----- functions -----
        f1 = sin(x + y) - 1.1*x - 0.2;
        f2 = 1.1*x^2 + 2*y^2 - 1;
        
        % ----- jacobian matrix -----
        J = [cos(x + y) - 1.1, cos(x + y);
             2.2*x,            4*y];
        
        % ----- function vector -----
        F = [f1; f2];
        
        % ----- newton step: solve J * delta = -F -----
        delta = -J\F;
        
        % ----- updating -----
        x = x + delta(1);
        y = y + delta(2);
        
        % ----- checking convergence -----
        if norm(delta) < tol
            fprintf('Converged in %d iterations.\n', iter);
            fprintf('Solution: x = %.6f, y = %.6f\n', x, y);
            return;
        end
    end
    
    fprintf('Did not converge in %d iterations.\n', max_iter);
end
