function out = getFacWhile(i)
out = 1;
while (i > 1)
    out = out .* i;
    i = i - 1;
end

