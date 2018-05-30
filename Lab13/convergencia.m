%% Programa principal
% Comparativa de convergencia
clear, clc;

%% EDO
f = @(t,y)t.*exp(3.*t)-2.*y; % y' = f(t,y)
alpha = 0;        % y(a) = alpha
h = 0.25; 
a = 0; b = 1;
g=@(t)exp(3*t).*(t/5-1/25)+exp(-2*t)/25;
tExacte = [a:h:b];
yexa = exp(-tExacte)+tExacte;

%% Euler
t1 = [a:h:b];
[ ye1 ] = Euler(f,a,b,h,alpha);
[ ye2 ] = EulerModificat(f,a,b,h,alpha);
[ ye3 ] = EulerMillorat(f,a,b,h,alpha);
[ ye4 ] = RK4(f,a,b,h,alpha);
[t2,y2] = ode45(f, [a,b], alpha);

%% Taula
texa = [a:h:b];
yExacte = g(texa);
disp('  Correcte |      ye1 |     ye2 |     ye3 |     ye4')
taula = [yExacte;ye1;ye2;ye3;ye4]';
disp(taula)
taulaErrors = [abs(ye1-yExacte);abs(ye2-yExacte);abs(ye3-yExacte)]'

%% Gràfiques
% hold all,
% plot(t1,ye1,'b'), 
% plot(t2,ye2,'r'),
% plot(tExacte,yexa,'k'),
% title('y''=-y+t+1')
% legend('RK4-0.5','RK4-0.25','Exacte','location','best')

%% Error
ye1Error = norm(ye1-g(t1));
ye2error = norm(ye2-g(t2));