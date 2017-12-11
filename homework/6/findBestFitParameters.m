load('Drand.mat');   
global data nsample
data = Drand;
nsample = length(data);
mu = 1;
sigma = 10;
x0 = [mu, sigma];
x = fminsearch(@getLogProbNorm, x0);
fprintf ('mu: %f, sigma: %f\n', x(1), x(2))