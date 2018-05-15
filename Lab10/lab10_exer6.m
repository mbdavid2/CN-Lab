%% Exercici 6 - dimecres 9 de maig
% *Interpolació polinomial*
%% Dades
x=[-4:5];
y=zeros(size(x));
y(4:6)=1;
disp([x; y])
%% full
u = -3.75:.25:5.25;
v = polyinterp(x,y,u);
subplot(2,2,1),plot(x,y,'o',u,v,'r-');,title('full degree')
legend('nodes','full','location','best')
%% lineal a trossos
u = -3.75:.25:5.25;
v1 = interp1(x,y,u);
subplot(2,2,2),plot(x,y,'o',u,v1,'r-');,title('linear')
legend('nodes','linear','location','best')
%% Shape
u = -3.75:.25:5.25;
v2 = pchip(x,y,u);
subplot(2,2,3),plot(x,y,'o',u,v2,'r-');,title('shape-preserving')
legend('nodes','shape','location','best')
%% Cúbic a trossos
u = -3.75:.25:5.25;
v3 = spline(x,y,u);
subplot(2,2,4),plot(x,y,'o',u,v3,'r-');,title('spline')
legend('nodes','spline','location','best')