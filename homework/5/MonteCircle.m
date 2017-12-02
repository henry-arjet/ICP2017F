function synthPi = MonteCircle(nTries)
    inside = 0;
    for i = 1:nTries
        x = rand;
        y = rand;
        if ((x^2 + y^2) < 1)
            inside = inside + 1;
        end
    end
    synthPi = (4*inside)/(nTries);
    