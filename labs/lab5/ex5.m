% ----------------
% ----- EX 5 -----
% ----------------
% ----- delcaring the matrix ----- 
A = [1 -1; 3 2];

% ----- computing the eigenvalues -----
eigenvalues = eig(A)

% ----- displaying the eigenvalues -----
disp('Eigenvalues:');
disp(eigenvalues);

% ----- computing eigenvectors for each eigenvalue -----
[V, D] = eig(A);

% ----- finding eigenvectors for each eigenvalue -----
unique_eigenvalues = unique(diag(D));

for i = 1:length(unique_eigenvalues)
    lambda = unique_eigenvalues(i);
    fprintf('\nEigenvalue λ = %.4f\n', lambda);
    
    % ----- computing the basic eigenvector -----
    eigenvector_idx = find(abs(diag(D) - lambda) < 1e-10, 1);
    basic_eigenvector = V(:, eigenvector_idx);
    fprintf('\nGenerating three eigenvectors for λ = %.4f:\n', lambda);
    
    % ----- first eigenvector -----
    fprintf('Eigenvector 1:\n');
    disp(basic_eigenvector);
    
    % ----- second eigenvector -----
    fprintf('Eigenvector 2 (scaled by 2):\n');
    eigenvector2 = 2 * basic_eigenvector;
    disp(eigenvector2);
    
    % ----- third eigenvector -----
    fprintf('Eigenvector 3 (scaled by -1):\n');
    eigenvector3 = -1 * basic_eigenvector;
    disp(eigenvector3);
end
