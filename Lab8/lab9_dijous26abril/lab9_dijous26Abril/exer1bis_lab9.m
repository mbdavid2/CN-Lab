%% Sistema sobredeterminat
% solució no única
A = magic(8); A = A(:,1:6)
b = 260*ones(8,1)
%%
rA=rank(A)
rAb=rank([A,b])
%% Equacions normals
B=A'*A
c=A'*b
%%
x_sol=B\c
r_min=norm(b-A*x_sol,2)
%% Matriu pseudoinversa
y_sol=pinv(A)*b
r_y=norm(b-A*y_sol,2)
%% 
z_sol=A\b
r_z=norm(b-A*z_sol,2)