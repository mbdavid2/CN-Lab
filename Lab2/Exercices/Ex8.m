%% Ex 8 (2. Algorithms)
%% Integrals with plots

F=@(x,n)x.^n.*exp(x-1);

t=0:0.01:1;
subplot(321), plot(t,F(t,1)), title('n=1')
subplot(322), plot(t,F(t,5)), title('n=5')
subplot(323), plot(t,F(t,10)), title('n=10')
subplot(324), plot(t,F(t,15)), title('n=15')
subplot(325), plot(t,F(t,24)), title('n=24')
subplot(326), plot(t,F(t,30)), title('n=30')

%% b) Forward recurrence (error divided by n)

IF(1)=1/exp(1)
for k=2:10
    IF(k)=1-k*IF(k-1);
end

%% b) Backwards recurrence (error multiplied by n)

IB(50)=0
for k=50:-1:2
    IB(k-1)=(1-IB(k))/k;
end

format short g
(IF:IB)'

%% Exact value (best option, using matlab)

F=@(x,n)x.^n.*exp(x-1);
for k=1:50
    IB(k)=integral(@(x)F(x,k),0,1);
end

IB(k)

%% Errors

%[abs(IF-IE);abs()]'