function out = ConvertTempFor( inVec, inString )
    if (inString == 'F2C')
        out = [];
        for index = inVec
            c = (index-32)./1.8;
            out = [out, c];
        end
    elseif (inString == 'C2F')
        out = [];
        for index = inVec
            c = (index .* 1.8 + 32);
            out = [out, c];
        end
    else
        disp('Please enter either F2C or C2F');
        return;
    end
    disp (out);
end