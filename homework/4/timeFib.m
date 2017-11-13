function out = timeFib(imp)
    if isreal(imp) && ~ischar(imp)
        if imp>=0 && round(imp)==imp
            out.n = imp;
            out.fib = getFib(imp);
            out.runTime = timeit(@()getFib(imp));
            return
        end
    end
    disp('The input argument is not a non-negative integer!');
end
function fib = getFib(n_int)
    if n_int == 0
        fib = 0;
    elseif n_int == 1
        fib = 1;
    else
        fib = getFib(n_int-1) + getFib(n_int-2);
    end
end
