function out = ConvertTempVec( inVec, inString )
    if (inString == 'F2C')
        out = (inVec-32)./1.8;
    elseif (inString == 'C2F')
        out = (inVec .* 1.8 + 32);
    else
        disp('Please enter either F2C or C2F');
        return;
    end
    disp (out);
end