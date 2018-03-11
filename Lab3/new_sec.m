function root = new_sec(f,a,b,tol,N)
    k = 0;
    tolx = 1; tolf=abs(f(a)); err = max(tolx,tolf);
    while(err > tol && k < N)
        c = a;
        a = b;
        b = b + (b - c)/(f(c)/f(b)-1)
        k = k + 1;
        tolx = abs(b - a);
        tolf = abs(f(b));
        err = max(tolx, tolf);
    end
    root = b;
end