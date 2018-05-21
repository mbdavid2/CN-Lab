%% Read data
% figure('position',get(0,'screensize'))
% axes('position',[0 0 1 1])
% [x,y] = ginput;
filename = 'hand.mat';
save(filename);

%% 
clear, clc, load('handClosed.mat');
n = length(x);
s = (1:n)';
t = (1:.05:n)';
u1 = spline(s,x,t);
v1 = spline(s,y,t);
u2 = pchip(s,x,t);
v2 = pchip(s,y,t);
clf reset
hold all,
plot(x,y,'.','DisplayName', 'Points')
plot(u1,v1,'-','Color','b','DisplayName', 'Spline')
%plot(u2,v2,'-','Color','r','DisplayName', 'pchiptx')
legend('show')

%% 3.5 Alternative approach
%% Data
% axes('position',[0 0 1 1])
% [x0,y0] = ginput;
% filename = 'handCenter.mat';
% save(filename);
% 
% %%
% load('handCenter.mat');
% x = x - x0(1);
% y = y - y0(1);
% theta = atan2(y,x);
% r = sqrt(x.^2 + y.^2);
% plot(theta,r);
% 
% delta = 0.1;
% t = (theta(1):delta:theta(end))';
% p = pchiptx(theta,r,t);
% s = splinetx(theta,r,t);

%% Calcul area ma
%% Opcio A -> area del poligon
total = 0;
for i = 1:length(x)-1
    total = total + x(i)*y(i+1);
    total = total - x(i+1)*y(i);
end
areaMaA = total/2

% en una linea: areaMaA = (x'*y([2:n 1]) - x([2:n 1])'*y)/2

%% Opcio B -> Quadratura simple
h = 1;
xmin = min(x(:));
ymin = min(y(:));
xmax = max(x(:));
ymax = max(y(:));
[u,v] = meshgrid(xmin:h:xmax,ymin:h:ymax);
k = inpolygon(u,v,x,y);
areaMaB = h^2*nnz(k)

%% Opcio C -> Quadratura adaptativa (2D)
tol = 0.005;
areaMaC = dblquad(@(u,v)chi(u,v,x,y),xmin,xmax,ymin,ymax,tol)
k = chi(u,v,x,y)



