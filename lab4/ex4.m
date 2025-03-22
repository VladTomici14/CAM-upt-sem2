% ----------------
% ----- EX 4 -----
% ----------------

% ----- defining the corresponding matrices -----
A = [-6 8 -1; 2 -3 0];
B = [-5; 7];

% ----- checking the dimensions and the rank of the system ----- 
[m, n] = size(A);
rank_A = rank(A); 
rank_AB = rank([A B]); 

if rank_A == rank_AB
    fprintf("The system is compatible!\n");

    if rank_A < n
        fprintf("THe system is undetermined with infinitely many soluions!\n");
        fprintf("Finding one particular solution using the pseudoinverse method: !\n");
    
        % finding a particular solution (minimum norm solution) 
        x_particular = pinv(A) * B; 

        % displaying the particular solution
        fprintf("x = %.f\n", x_particular(1));
        fprintf("y = %.f\n", x_particular(2));
        fprintf("z = %.f\n", x_particular(3));

        % expressing the general solution
        fprintf("General solution can be expressed as:\n");
        Z = null(A);

        if ~isempty(Z)
            fprintf('x = %.4f + %.4f*t\n', x_particular(1), Z(1));
            fprintf('y = %.4f + %.4f*t\n', x_particular(2), Z(2));
            fprintf('z = %.4f + %.4f*t\n', x_particular(3), Z(3));
            fprintf('where t is any real number\n');
        end
    else
        fprintf("The system has an unique solutions!\n");

        % computing the unique solution
        x = A \ B; 
        
        % displaying the unique solution 
        fprintf('x = %.4f\n', x(1));
        fprintf('y = %.4f\n', x(2));
        fprintf('z = %.4f\n', x(3));

    end
else
    fprintf("The system is incompatible with no solutions!");
end
