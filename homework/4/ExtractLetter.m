function ExtractLetter()
    out = [];    
    list = { {'M','A','T','L','A','B'}, {' '}, {'i','s'}, {' '}, {'a'}, {' '}, {'s','t','r','a','n','g','e'}, {', '}, {'b','u','t',' '}, {'p','o','p','u','l','a','r'}, {' '}, {'p','r','o','g','r','a','m','m','i','n','g',' ','l','a','n','g','u','a','g','e'} };
    for i = 1:length(list)
        out = [out, list{i}];
    end
    out = strjoin (out, '');
    disp ('out =');
    disp(out);
end