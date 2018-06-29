clear, clc

%%
x = 16;
PRO = expcdf(16,5)
interval = 0:0.1:16;
a = 1; b = 5;
F = @(x)(1/((5.^1)*gamma(1))).*(x.^(1-1)).*exp(-x/5);
plot(interval, F(interval))
% plot(interval, y(interval, alpha, beta),'-');
for i = 4:11
    disp('__________')
    N = 2.^i
    res = simp(F, 0, 16, N);
    erA = abs(PRO - res);
    erR = erA/PRO;
    dc = fix(-log(erA*2))
    xs = fix(-log(erR*2))
    disp('__________')
end
