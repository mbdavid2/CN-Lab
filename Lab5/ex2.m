%% Mètode de la iteració simple
% Exercici 2

%% Funció dues variables
F1 = @(x,y)sin(x+y)-x;
F2 = @(x,y)cos(x-y)-y;

%% Funció iterativa
format short
G1 = @(x,y)sin(x+y);
G2 = @(x,y)cos(x-y);
DG = [cos(x+y), cos(x+y); -sin(x-y), sin(x-y)];

% if (DG)
%     comprovacio dg(aplha) < 1
% end

F = [F1(x,y);F2(x,y)];
tolz = norm([x,y]); tolf = norm(F);
tol = 0.0000001;
x = 1; y = 1;
toler = max(tolz, tolf);
k = 0;
while(k<5 && toler>eps)
    x = G1(x,y);
    y = G2(x,y);
    k = k+1;
    F = [F1(x,y);F2(x,y)];
    tolz = norm([x,y]); tolf = norm(F);
    toler = max(tolz, tolf);
end
sol = [x,y]
tols = [tolz, tolf]