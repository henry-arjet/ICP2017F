function fibLoop()

    n = input('Please enter a non-negative integer or type stop: ','s');
    if strcmp(n,'stop')
        return
    else
        n = str2double(n);
        if isreal(n)
            if n>=0 && round(n)==n
                disp(['fib(',num2str(n),') = ',num2str(getFib(n))]);
                disp(['average runtime: ', num2str(timeit(@() getFib(n)))]);
                fibLoop()
                return
            end
        end
        disp('The input argument is not a non-negative integer!');
        fibLoop()
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

end