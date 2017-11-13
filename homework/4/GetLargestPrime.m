function o = GetLargestPrime(imp)
    for i = imp:-1:1
        if (isprime(i))
            o = i;
            break
        end
    end
end

