%% Programa principal
% Quadratura adaptativa
clear, clc

% Quadgui -> Demonstrate numerical evaluation of a definite integral.
%% a) pg 5/15

a = 1;
b = 2;
f=@(x)log(x);
Ie = 2*log(2) - 1; %log es ln
integral(f,a,b)

%%
tol = 1.e-6;
[Qout, fcount] = quadgui(f,a,b,tol)

%% b) 

a = 0;
b = pi/4;
f=@(x)(cos(x)).^2;
Ie = sin(2*b)/4+b/2-(sin(2*a)/4+a/2); %log es ln
integral(f,a,b)

%%
tol = 1.e-6;
[Qout, fcount] = quadgui(f,a,b,tol)

%% c) 

a = 2/(7*pi);
b = 2/pi;
f=@(x)(sin(1./x)+3/2);
Ie = integral(f,a,b);

%%
tol = 0.5e-6;
[Qout, fcount] = quadgui(f,a,b,tol)

%% d)  HUMPS

a = 0; b = 1;
Ie = integral(@humps,a,b)

%%
%tol = 0.5e-6;
a = 0; b = 1;
[Qout, fcount] = quadgui(@humps,a,b) % si no fica tol fa servir la que te per defecte

%% Com abans pero amb 1e-6 -> 6 decimals correctes per calcular l'integral, tarda molt més i necessita més punts
tol = 1e-6;
a = 0; b = 1;
[Qout, fcount] = quadgui(@humps,a,b,tol)

%% Un altre exemple: molt cost computacional
tol = 1e-6;
a = -1; b = 2;
[Qout, fcount] = quadgui(@humps,a,b,tol)