%% Exercici 5
% *Interpolació Polinomial*
%% Dades
x = 1:6;
y = [16 18 21 17 15 12]
disp([x;y])


%% full
u = .75:.05:6.25;
v = polyinterp(x,y,u);
subplot(2,2,1),plot(x,y,'o',u,v,'r-'), title('full degrees')
legend('nodes', 'full', 'location', 'best')

%% lineal a trossos
u = 0.75:0.05:6.25;
v1 = interp1(x,y,u);
subplot(2,2,2), plot(x,y,'o',u,v1,'r-'), title('lineal')
legend('nodes','linear','location','best')

%% shape-preserving
u = 0.75:0.05:6.25;
v2 = pchip(x,y,u);
subplot(2,2,3), plot(x,y,'o',u,v2,'r-'), title('shape-preserving')
legend('nodes','shape-preserving','location','best')


%% Cubic a trossos
u = 0.75:0.05:6.25;
v3 = spline(x,y,u);
subplot(2,2,4), plot(x,y,'o',u,v3,'r-'), title('spline')
legend('nodes','spline','location','best')
