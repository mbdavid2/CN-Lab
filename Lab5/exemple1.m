%% Normes de vectors i matrius
%  dijous 22 de març
%% vectors
v=[1 2 3 -4 -5 -6 7 8 9]'
%%
norm(v)   % norma-2
norm(v,2) % norma-2
%%
norm(v,1) % norma-1
%%
norm(v,'inf') % norma-infinit
%% Matrius
A=[ 1 0 -3 4; -1 20 -15 3;
    2 3 4 5; -6 -7 -8 -100]
%%
norm(A,1) %norma-1
%%
norm(A,'inf') % norma-inf
%%
norm(A,'fro') % norma frobenius
%%
norm(A)      % norma-2
norm(A,2)

%% Sistemes lineals
b=[-2;   -16;     6;   -14]
x=A\b