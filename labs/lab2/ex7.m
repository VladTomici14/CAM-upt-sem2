
% --- declaring the function --- 
function y=f(x)
    if x < 0
        y=(sin(3*x))/(2*x);
    else
        y=cos(3*x);
    end
end

% --- displaying the results --- 
disp(f(-3));

disp(f((-1* pi) / 2));

disp(f(0));

disp(f(1.25));

disp(f((7 * pi) / 2));