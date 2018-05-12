%% Obtenir el radi de convergencia més optim (minim) per els metodes de classe
%% Exemple amb una matriu
A = [1 0 1; -1 1 0; 1 2 -3];

[ rhoJ ] = radis(A)

% El verd i el blau son nomes un punt!!! el grafic es per rhoW pero per que
% es vegin els altres fa 2 grafics

%% Un altre exemple
A = [10 -1 2 0; -1 11 -1 3; 2 -1 10 -1; 0 3 -1 8];
[ rhoJ ] = radis(A)