%% Mètode de Newton
%   Exercici 1 - 22 de març
%%
clear, clc
%% Equacions
F1=@(x,y)x-sin(x+y);
F2=@(x,y)y-cos(x-y);

%% Gràfica
fimplicit(F1)
hold on
fimplicit(F2)
grid
title('Sistema equacions')
hold off
%% Iteracions
x=1; y=1; t=[x;y];
F=[F1(x,y);F2(x,y)];
DF =[1 - cos(x + y),    -cos(x + y);
    sin(x - y), 1 - sin(x - y)];
tolf=norm(F);
tolx=norm(t);
toler=max(tolf,tolx);
k=0; tol=10^(-6);
while(k<5 && toler > tol)
    z = -DF\F;
    t = t+z
    x=t(1); y=t(2);
    F=[F1(x,y);F2(x,y)];
    DF =[1 - cos(x + y),    -cos(x + y);
    sin(x - y), 1 - sin(x - y)];
    tolf=norm(F);
    tolx=norm(z);
    toler=max(tolf,tolx);
    k=k+1;
end
fprintf('\n\n Solució aproximada\n')
sol=t
tols=[tolf; tolx]