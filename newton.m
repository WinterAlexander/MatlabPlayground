function root = newton(f, fd, x, xtol, ftol, nmax)
    n = 0;
    fx = feval(fname,x);
    if abs(fx) <= xtol
        root = x;
        return
    end
    for n = 1:nmax
        fdx = feval(fdname, x);
        fx = feval(fname, x);
        d = fx / fdx;
        x = x - d;
        if abs(d) <= xtol || abs(fx) <= ftol
            root = x;
            return
        end
    end
end