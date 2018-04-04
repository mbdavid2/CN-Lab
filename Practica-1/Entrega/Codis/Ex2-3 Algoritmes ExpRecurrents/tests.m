%% 2) Pi
% for k = 1:12
%    n = 7^k;
%    pi_alg(n);
% end

%% Pi efficient
% El for amb el codi eficient est� dins de la funci�, aqu� li diem la k m�xima
    k = 5;
    effPi(k);

%% Golden Ratio
format long
phiCorrect = (1 + sqrt(5))/2;

% %% Using Fibonacci
for n = 5:1000
    Orfib(n);
end

% % %% Using continued fraction
for n = 5:1000
   Orfract(n);
end

phiCorrect = (1 + sqrt(5))/2

