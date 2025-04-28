%{
Write a program, which, using a while-loop statement, calculates the partial
products of the elements of the vector v1=[2 3 1 9 2 -1 -3 5] until it encounters a
negative number and displays the last calculated product. What is the result
displayed if the v1 vector is replaced with the vector v2=[2 3 1 9 2 1 3 5]?
%}

% --- function for solving the exercises ---
function product=productUntilNegative(input_array)
    i=1;
    product=1;

    while i <= length(input_array) && input_array(i) >= 0
        product = product * input_array(i);
        i = i + 1; 
       
    end
end

% --- declaring the input array ---
v1=[2 3 1 9 2 -1 -3 5];
v2=[2 3 1 9 2 1 3 5];

% --- calling the function for each array ---
product1=productUntilNegative(v1);
product2=productUntilNegative(v2);

% --- printing the results ---
fprintf('the calculated products are: %d and %d\n', product1, product2);
