fibFile = fopen('fibOutput.txt', 'w');
for i = 1:35
    f = timeFib(i);
    fprintf(fibFile, 'The fibonacci number of %u computed with a for loop is %u, and it takes %g seconds to calculate\r\n', i, f.fib, f.runTime);
end
fclose(fibFile);

fibLoopFile = fopen('fibLoopOutput.txt', 'w');
for i = 1:35
    f = timeFibLoop(i);
    fprintf(fibLoopFile, 'The fibonacci number of %u computed with a for loop is %u, and it takes %g seconds to calculate\r\n', i, f.fib, f.runTime);
end
fclose(fibLoopFile);

    