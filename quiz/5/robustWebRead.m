function out = robustWebRead(inp)
    try
        disp('Reading data from the web address...');
        out = webread(inp);
        disp('Done.');
        
    catch
        disp('Warning: The requested web address does not exist! Gracefully exiting... ')
        
    end
end

        