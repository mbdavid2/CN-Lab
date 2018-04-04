%% Exemple de normes vectorials i matricials
v = [1 2 3 4 -5 -6 -7 8 9 10];
norm(v) % norma-2
norm(v,2)

norm(v,1) %norma-1

norm(v, 'inf')

A = magic(4) % per tenir un matriu d'exemple
format rat %rational formats
A = hilb(4)
norm(A,1)


A = [1 2 0; -1 -3 5; 0 0 -100]
norm(A,1)
norm(A,'inf')

format short

norm(A,'fro') %froemius directe

s = sum(sum(abs(A.^2))); % amb la formula
sqrt(s)

eig(A) % valors propis d'A
sqrt(eig(A*A))
norm(A,2)

%% Sistemes lineals
A = [1 2 0; -1 -3 5; 0 0 -100];
b = [3; 1; -100];
