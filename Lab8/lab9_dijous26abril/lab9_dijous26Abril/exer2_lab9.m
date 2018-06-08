%% Exercici2 - Lab setmana 9
% Càlcul pesos atòmics N i O
%% Sistema lineal
A=[ 1 1; 2 1; 1 2; 2 3; 2 5; 2 4]
b=[30.006 44.013 46.006 76.012 108.010 92.011]';
%%
rA=rank(A)
rAb=rank([A,b])
%% Equacions normals
B=A'*A
c=A'*b
%%
x_sol=B\c
%% Matriu pseudoinversa
y_sol=pinv(A)*b
%% 
z_sol=A\b
%%
% *residu mínim*
r_min=norm(b-A*x_sol,2)
y=[14 16]';
residu=norm(b-A*y,2)