%% Ex 4 Full_lab4.pdf
%% Equation: x + ln(x) = 0
f = @(x) x + log(x);

%Sabem que hi te una arrel al voltant de 0.5
t = 0:0.01:1;
%zeros per dibuixar la linea de 0 i 'm' pel color
plot(t, f(t), t, zeros(size(t)),'m'), grid, title('Equation');

%% Fzero Matlab

alpha = fzero(f,1)

%% Iterative method #1

g1 = @(x)-log(x);
dg1 = @(x)-1./x;
x0 = 0.5;
tol = 0.0005;
N = 10;
if (abs(dg1(x0)) < 1)
    [ root, x_sol ] = new_fixPoint(f,g1,x0,tol,N)
    tolf = f(x_sol)
else 
    disp('Divergent!')
end


%% Iterative method #2

g2 = @(x)exp(-x);
dg2 = @(x) -exp(-x);
x0 = 0.5;
tol = 0.0005;
N = 20;

if (abs(dg2(x0)) < 1)
    [ root, x_sol ] = new_fixPoint(f,g2,x0,tol,N)
    tolf = f(x_sol)
else 
    disp('Divergent!')
end

%% Iterative method #3

g3 = @(x) (x+exp(-x))/2;
dg3 = @(x) (1-exp(-x))/2;
x0 = 0.5;
tol = 0.0005;
N = 20;

if (abs(dg3(x0)) < 1)
    [ root, x_sol ] = new_fixPoint(f,g3,x0,tol,N)
    tolf = f(x_sol)
else 
    disp('Divergent!')
end

%% Estudi convergència

plot(t,f(t),t,dg1(t),t,dg2(t),t,dg3(t),alpha, 0, 'rs', alpha, dg1(alpha),'rs',t,y,'c',t,-y,'c','LineWidth',1), grid
legend('equació', 'mètode 1','mètode 2','Location', 'best')