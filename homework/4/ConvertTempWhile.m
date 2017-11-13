function out = ConvertTempWhile( inVec, inString )
    i = 1;
    if (inString == 'F2C')
        out = [];
        while (i <= length(inVec))
            c = (inVec(i)-32)./1.8;
            out = [out, c];
            i=i+1;
        end
    elseif (inString == 'C2F')
        out = [];
        for index = inVec
            c = (inVec(i) .* 1.8 + 32);
            out = [out, c];
            i=i+1;
        end
    else
        disp('Please enter either F2C or C2F');
        return;
    end
    disp (out);
end