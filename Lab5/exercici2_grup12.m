%% Mètode del punt fix
%   Exercici 1 - 22 de març
%%
clear, clc
%% Equacions
F1=@(x,y)x-sin(x+y);
F2=@(x,y)y-cos(x-y);

%% Funció iterativa
G1=@(x,y)sin(x+y);
G2=@(x,y)cos(x-y);

%% Iteracions
x=1; y=1; t=[x;y];
F=[F1(x,y);F2(x,y)];
DG =[cos(x + y), cos(x + y); 
    -sin(x - y), sin(x - y) ]
rho=max(abs(eig(DG)));
if rho < 1 
   tolf=norm(F);
    tolx=norm(t);
    toler=max(tolf,tolx);
    k=0; tol=10^(-6);
    while(k<16 && toler>tol)
        z=t;
        x=G1(x,y);
        y=G2(x,y);
        t=[x;y];
        F=[F1(x,y);F2(x,y)];
        tolf=norm(F);
        tolx=norm(z-t);
        toler=max(tolf,tolx);
        k=k+1
    end
    fprintf('\n\n Solució aproximada\n')
    sol=t
    tols=[tolf; tolx]
else
    fprintf('\n Mètode divergent\n')
end