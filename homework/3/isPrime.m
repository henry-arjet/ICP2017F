function b = isPrime(n)
    b = check(2, n);

end
function b = check(c, n)
    if (n*.5 < c)
        b = 1;
        return
    elseif(mod(n,c)== 0)
        b = 0;
        return
    else
        b = check(c+1, n);   
    end     
end