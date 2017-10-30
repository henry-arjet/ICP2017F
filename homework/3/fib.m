function fib()
    prompt = 'Please enter a non-negative integer or type stop: ';
    x = input(prompt, 's');
    if strcmpi(x, 'stop') 
        return
    else
        x = str2double(x);
        if (isreal(x))
           if (x >= 0)
               if (x == round(x))
                   fprintf('Term %u of the fibonacci sequence is %u\n', x, getFib(x));
                   fib();
               else fail();    
               end
           else fail();    
           end
        else fail();   
        end
    end
    

end
function fail()
    disp ('The input argument isnt a non-negative integer. Try again.');
    fib();
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
