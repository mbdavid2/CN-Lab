%% Exercici1 - Lab setmana 9
% exemple sistemes sobredeterminats
%% Sistema lineal
A=[1 1 1 0; 1 0 1 2; 1 1 0 1;
    0 -1 2 0; -1 1 -1 1]
b=[2;3;4;2;1]
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
y=[0,-1,2,-1]';
residu=norm(b-A*y,2)