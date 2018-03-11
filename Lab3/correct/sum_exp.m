function [suma] = sum_exp(x,n,tol)
% suma parcial de la sèrie exponencial
%   x : dada 
%   n : dada
%   sortida: suma(x,n)
suma=1; 
aux =1; 
k=1; era=1;
while(k<n && era> tol)
    aux = aux*x/k;
    suma = suma+aux;
    era=abs(exp(x)-suma);
    k=k+1;
end
disp('iteracions '),disp(k)
disp('error '),disp(era)
end