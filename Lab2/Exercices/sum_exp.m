% function [ suma,era,k ] = sum_exp(x,n,tol)
% % Ex 9 (2. Algorithms)
% % Partial sum of the exponential series
% % x: data
% % n: data
% % output: sum(x,n)
%     suma = 1;
%     aux = 1;
%     for k=1:n
%         aux = aux*x/k;
%         suma = suma + aux;
%         era=abs(exp(x)-suma);
%         if era < tol
%             return
%         end
%     end
%     disp('iterations: '), disp(k)
%     disp('error: '), disp(era)
% end
    

%% With while       
function [ suma ] = sum_exp(x,n,tol)
    suma = 1;
    aux = 1;
    k = 1;
    era = 1;
    while (k<n && era > tol)
        aux = aux*x/k;
        suma = suma + aux;
        era=abs(exp(x)-suma);
    end
    disp('iterations: '), disp(k)
    disp('error: '), disp(era)
end
