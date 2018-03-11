%% symbolic

syms s
eqn = sin(x) == 1;
solx = solve(eqn,x)
t=2*pi:0.1:2*pi;
plot(t,sin(t),t,ones(size(t1)),solx,1