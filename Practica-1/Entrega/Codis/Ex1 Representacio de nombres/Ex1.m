%% Funcions
format long
f=@(x)1.01*exp(4*x)-4.62*exp(3*x)-3.11*exp(2*x)+12.2*exp(x)-1.99;
F=@(x)(((1.01*exp(x)-4.62)*exp(x)-3.11)*exp(x)+12.2)*exp(x)-1.99;



%% x = 1.53

fCorrecte3 = f(1.53);
FCorrecte3 = F(1.53);
fTresXifres = -7.99;
FTresXifres = -8.037;

errorRelf3 = (abs(fTresXifres-fCorrecte3)/abs(fCorrecte3))*100
errorRelF3 = (abs(FTresXifres-FCorrecte3)/abs(FCorrecte3))*100

%% x = 0.925

fCorrecte4 = f(0.925);
FCorrecte4 = F(0.925);

fQuatreXifres = -24.25;
FQuatreXifres = -24.25;

errorRelf4 = (abs(fQuatreXifres-fCorrecte4)/abs(fCorrecte4))*100
errorRelF4 = (abs(FQuatreXifres-FCorrecte4)/abs(FCorrecte4))*100