function out = timeFibLoop(imp)
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
    
    function f = getFib (d)
        if (d == 0)
            f = 0;
        elseif (d == 1)
            f = 1;
        else
            f = 1;
            f1 = 0;
            f2 = 0;
            for i=1:(d-1)
                f1 = f;
                f = (f + f2);
                f2 = f1;
            end
        end
    end