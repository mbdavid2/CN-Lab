%% Exercici 7 - full3
% dimecres 7 de març
clear
%% Gràfica
t=-4:0.01:4; %0:0.05:2;
f=@(x)exp(x)-2+x;
df=@(x)exp(x)+1;
plot(t,f(t),t,zeros(size(t))),grid
%% FZERO de MATLAB
zero=fzero(f,0)

%% Mètode de Newton
a=0; tol=0.0005; format long g
root = new_new(f,df,a,tol,15)

%% Mètode de la secant
a=0; b=1; tol=0.0005; 
root = new_sec(f,a,b,tol,15)

%% Mètode de la biseccio
a=0; b=1 ; tol=0.0005; 
root = new_bisec(f,a,b,tol,25)