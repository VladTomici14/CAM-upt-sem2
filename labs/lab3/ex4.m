% ----------------
% ----- EX 4 -----
% ----------------

% ----- setting the p variable -----
p = 4;

% ----- defining the regions and their coordinates -----
a_x = [0 2 2 0];
a_y = [0 1 -1 0];

b_x = [0 0 2 0];
b_y = [0 2 1 0];

c_x = [0 0 -2 0];
c_y = [0 2 1 0];

d_x = [0 -2 -2 0];
d_y = [0 1 -1 0];

e_x = [0 -2 0 0];
e_y = [0 -1 -2 0];

f_x = [0 0 2 0];
f_y = [0 -2 -1 0];

% ----- displaying the plot -----
figure; hold on; 
plot( a_x, a_y, b_x, b_y, 'r', c_x, c_y, 'g', d_x, d_y, 'y', e_x, e_y, 'o', f_x, f_y, 'r'); 
fill(a_x, a_y, 'red');
fill(b_x, b_y, 'blue');
fill(c_x, c_y, 'red');
fill(d_x, d_y, 'blue');
fill(e_x, e_y, 'red');
fill(f_x, f_y, 'blue');