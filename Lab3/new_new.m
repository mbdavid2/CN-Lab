function root = new_new(f,df,x,tol,N)
    k = 0;
    tolx = 1; tolf=abs(f(x));
    while(tolx > tol && tolf > tol && k < N)
        xprev = x;
        x = x - f(x)/df(x)
        k = k + 1;
        tolx = abs(x - xprev);
        tolf = abs(f(x));
    end
    root = x;
end