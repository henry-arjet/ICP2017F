r = 89300000;
fprintf('average runtime for getFacWhile(%d): %g seconds\n', r, timeit(@()getFacWhile(r)));
fprintf('average runtime for getFacFor(%d): %g seconds\n', r, timeit(@()getFacFor(r)));
fprintf('average runtime for getFacVec(%d): %g seconds\n', r, timeit(@()getFacVec(r)));