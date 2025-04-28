% first function
fig1 = figure; 
fplot(@(x) x.^5 + 5.*x + 1, [-1, 0])
hold on
yline(0, '--r')
title('f(x) = x^5 + 5x + 1')
xlabel('x')
ylabel('f(x)')
hold off
datacursormode(fig1, 'on'); 

% second function
fig2 = figure; 
fplot(@(x) atan(x) + atan(10.*x) - 0.75, [0, 1])
hold on
yline(0, '--r')
title('g(x) = arctan(x) + arctan(10x) - 0.75')
xlabel('x')
ylabel('g(x)')
hold off
datacursormode(fig2, 'on');
