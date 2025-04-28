
% --- declaring a blank matrix --- 
my_matrix_1 = zeros(4, 4);

for i=1:4 
    for j=1:4
        my_matrix_1(i, j) = (i * j) / (i + j - 1);
    end
end

% --- displaying the output matrix --- 
disp(my_matrix_1);

% --- declaring another empty matrix --- 
my_matrix_2 = zeros(4, 5);

for i=1:4 
    for j=1:5
        if i == j
            my_matrix_2(i, j) = 3;
        elseif abs(i - j) == 2
            my_matrix_2(i, j) = -3;
        elseif i + j == 3
            my_matrix_2(i, j) = 1;
        else
            my_matrix_2(i, j) = 0;
        end
    end
end

% --- dispalying the output matrix 2 --- 
disp(my_matrix_2)