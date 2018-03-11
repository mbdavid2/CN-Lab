%% Ex 5 (2. Algorithms)
%% Loss of significant numbers

f=@(x)sqrt(x.^2+1)-1;

g=@(x)(x.^2)./sqrt(x.^2+1)+1;

%Using points instead of ^, * or / forces MatLab to operate for each
%element of the matrix. Ex: if we have the matrix M = (1 2 3 4) and we make
%M^2 MatLab will do (1 2 3 4)*(1 2 3 4) as a matrix multiplication. M.^2
%will be (1^2 2^2 3^2 4^2)

n=1:15; %Vector
t=8.^(-n);
y1=f(t);
y2=g(t);

[n;t;y1;y2]'
