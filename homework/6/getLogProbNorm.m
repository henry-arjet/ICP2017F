function tp = getLogProbNorm(x0)
    global data nsample
    lp = zeros(nsample,1);
    for i = 1:nsample
        lp(i) = log(normpdf(data(i),x0(1),x0(2)));
    end
    tp = -sum (lp);
end