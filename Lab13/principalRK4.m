%% Programa principal
% M�tode d'euler
clear, clc;

%% EDO
f = @(t,y)-y+t+1; % y' = f(t,y)
alpha = 1;        % y(a) = alpha
a = 0; b = 1; h = 0.1;

tExacte = [a:0.01:b];
yexa = exp(-tExacte)+tExacte;

%% Euler
h = 0.5; t1 = [a:h:b];
[ ye1 ] = RK4(f,a,b,h,alpha)
h = 0.25; t2 = [a:h:b];
[ ye2 ] = RK4(f,a,b,h,alpha)

% Gr�fiques
hold all,
plot(t1,ye1,'b'), 
plot(t2,ye2,'r'),
plot(tExacte,yexa,'k'),
title('y''=-y+t+1')
legend('RK4-0.5','RK4-0.25','Exacte','location','best')

%% Error
ye1Error = norm(ye1-g(t1));
ye2error = norm(ye2-g(t2));