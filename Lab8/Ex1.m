%% Exercici 1 - lab S9
% Sistema sobredeterminat
%% Sistema lineal
A = [1 1 1 0; 1 0 1 2; 1 1 0 1; 0 -1 2 0; -1 1 -1 1];
b = [2;3;4;2;1];

%% 
% Sobredeterminat?
rA = rank(A), rAb = rank([A,b])

%% Equacions normals

B = A'*A
c = A'*b
x_min = B\c

%% 
% Residu minim
r_min = norm(b-A*x_min,2)
z = [0; -1; 2; -1];
r = norm(b-A*z)
