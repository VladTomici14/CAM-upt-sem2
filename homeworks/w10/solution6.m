x = [2.0; 3.0];  % Initial guess
tol_f = 0.1;
max_iter = 100;

for k = 1:max_iter
    f = [
        x(1)^7 - 5*x(1)^2*x(2)^4 + 1510;
        x(2)^5 - 3*x(1)^4 - 105
    ];
    
    J = [
        7*x(1)^6 - 10*x(1)*x(2)^4, -20*x(1)^2*x(2)^3;
        -12*x(1)^3, 5*x(2)^4
    ];
    
    dx = -J\f;
    x_new = x + dx;
    
    % Check bounds
    if any(x_new < [1.5; 2.5]) || any(x_new > [2.5; 3.5])
        warning('Out of bounds');
        break;
    end
    
    if norm(f) < tol_f
        fprintf('Converged in %d iterations\n', k);
        break;
    end
    
    x = x_new;
end

disp('Newton solution:');
disp(x);
