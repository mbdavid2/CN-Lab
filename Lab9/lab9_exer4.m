%% Mètode de la potència  
% Valor propi de modul màxim
%% Matriu
clear; clc;
A=[1 0 -1; 1 2 1;2 2 3]
%% 
%Iteracions
%x0=[0 0 1]'; 
x0=[1 -1 1]';
iter=1; tol=0.00000005;
x=x0; iterm=25;
error=norm(x,'inf');
taula(iter,:)=[0,x'];
while(iter<iterm && error> tol)
    z=A*x;
    m=norm(z,'inf');  % candidat a valor propi
    z=z/m; % candidat a vector propi
    iter=iter+1;
    error=norm(x-z,'inf');
    x=z;
    taula(iter,:)=[m,x'];
end
taula
%%
% Aproximació 
vep=z
vap=m
% Comprovem  --> prova = A*vep-vap*vep
