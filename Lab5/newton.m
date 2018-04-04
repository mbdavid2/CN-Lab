%% Metode de Newton per dues variables
%% Funció

% F1 -> x = sin(x+y)
% F2 -> y = cos(x-y)

%F(x,y) = (sin(x+y)-x,cos(x-y)-y)
F1 = @(x,y)sin(x+y)-x;
F2 = @(x,y)cos(x-y)-y;

%% Gràfic funció dues variables

% Eixos
x = 0:0.125:2;
y = 0:0.125:2;


% Valors de la funcio
%Z1 = F1(X,Y); 
%Z2 = F2(X,Y); amb fimplicit ho fa directament

fimplicit(F1,[0,2,0,2])
hold on
fimplicit(F2,[0,2,0,2])
hold off

%%

x = 1; y = 1;

% Derivades [F1 respecte x, F1 respecte y; F2 respecte x, F2 respecte y]
% DF = [cos(x+y)-1, cos(x+y); -sin(x-y), +sin(x-y)-1]
format long;
k = 0;
F = [F1(x,y);F2(x,y)];
DF = [cos(x+y)-1, cos(x+y); -sin(x-y), sin(x-y)-1];
tolz = norm([x,y]); tolf = norm(F);
tol = 0.0000001;
while (k <= 6 && tolf > tol && tolz > tol)
    z = DF\F; % primer pas
    x = x - z(1);
    y = y-z(2); % segon pas
    F = [F1(x,y);F2(x,y)];
    DF = [cos(x+y)-1, cos(x+y); -sin(x-y), sin(x-y)-1];
    tolz = norm(z);
    tolf = norm(F);
    k = k + 1; 
end
sol = [x,y]
tols = [tolz, tolf]