function [root,x] = new_bis(f,df,x,tol,N)
    k = 0;
    tolx = 1; tolf=abs(f(x));
    while(tolx > tol && tolf > tol && k < N)
        x = (a + b)/2;
        if (sign(f(x))
            b = x;
        else 
            a = x;
        end
        
        xprev = x;
        x = x - f(x)/df(x);
        k = k + 1;
        tolx = abs(x - xprev);
        tolf = abs(f(x));
    end
    root = x;
end