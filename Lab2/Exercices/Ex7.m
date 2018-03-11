%% Ex 7 (2. Algorithms)
%% Sensitivity to initial conditions

% Solve lineal systems
% Ex: 2x - 4y = 1
%     -2.998x + 6.001y = 2

A = [2,-4;-2.998,6.001];
b = [1;2];

format short g
xsol = A\b


% Now we change a little bit the equation
A2 = [2,-4;-2.998,6];
b2 = [1;2];

xsol2 = A2\b2

% We just changed the 6.001 to 6 but the solution changes a lot