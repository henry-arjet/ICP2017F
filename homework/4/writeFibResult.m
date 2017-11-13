fibFile = fopen('fibLoopOutput.txt', 'w');
for i = 1:35
    f = timeFibLoop(i);
    fprintf(fibFile, '\nThe fibonacci number of %u computed with a for loop is %u, and it takes %g seconds to calculate\n', i, f.fib, f.runTime);
    fprintf(fibFile, '\nThis is my second line\n');
end
fclose(fibFile);

    