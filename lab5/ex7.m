% ----------------
% ----- EX 7 -----
% ----------------

% a)
% ----- declaring the system matrix -----
A1 = [2 -3 0; -6 8 -1; 0 3 4];

% ----- computing the condition -----
cond_A1 = cond(A1);

% ----- printing if the system is ill/well contitioned -----
fprintf('Condition number of system (a): %.2e\n', cond_A1);
if cond_A1 > 1e3
    disp('System (a) is ill-conditioned.');
else
    disp('System (a) is well-conditioned.');
end

% b) 
% ----- declaring the system matrix -----
A2 = [190  7; 2  200];

% ----- computing the condition -----
cond_A2 = cond(A2);

% ----- printing if the system is ill/well contitioned -----
fprintf('Condition number of system (b): %.2e\n', cond_A2);
if cond_A2 > 1e3
    disp('System (b) is ill-conditioned.');
else
    disp('System (b) is well-conditioned.');
end
