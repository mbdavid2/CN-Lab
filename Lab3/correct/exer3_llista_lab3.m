%% Exercici 3 - full3
% dimecres 7 de març
clear
%% Gràfica
t=1:0.01:1.4; %0:0.05:2;
f=@(x)x.^6-x-1;
df=@(x)6*x.^5-1;
plot(t,t.^6,t,t+1)
plot(t,f(t),t,zeros(size(t))),grid
%% FZERO de MATLAB
zero=fzero(f,1.2)

%% Mètode de Newton
a=1.2; tol=eps; format long g
root = new_new(f,df,a,tol,5)

%% Mètode de la secant
a=1.2; b=2 ; tol=eps; 
root = new_sec(f,a,b,tol,5)

%% Mètode de la biseccio
a=0; b=2 ; tol=eps; 
root = new_bisec(f,a,b,tol,5)