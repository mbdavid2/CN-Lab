%% Exercici 2 - lab S9
% Sistema sobredeterminat
%% Sistema lineal
clear; clc;
A = [1 1; 2 1; 1 2; 2 3; 2 5; 2 4];
b = [30.006; 44.013; 46.006; 76.012; 108.01; 92.011];

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
z = [14;16];
r = norm(b-A*z)

%% Matriu Pseudoinversa de Moore-Penrouse
y_min = pinv(A)*b
