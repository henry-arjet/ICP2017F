function [] = MCGraph(n);
table = [0,0];
for i = 1:n
    newArray = [i, MonteCircle(i)];
    table = [table ; newArray];
end
    
    