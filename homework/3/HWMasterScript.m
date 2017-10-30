fprintf('Gauss P where mu=0 , sigma=2, x=1 is %e, confirmed by wolfram alpha\n', gaussP());
fprintf('The fridge egg will take %f seconds to cook, and the room temp egg will take %f seconds \n', egg(100, 70, 4), egg(100, 70, 20));
testCart = struct('x', 3, 'y', 6);
testPolar = getPolar(testCart);
testCart2 = getCart(testPolar);
fprintf('(3, 6) in polar is (%f, %f) \n', testPolar.r, testPolar.phi);
fprintf('Turning that back into cartesian would give you (%d, %d) \n', testCart.x, testCart.y);
fprintf('The test folder "fold" contains %u bytes.\n', sizeDir('fold'));
function g = gaussP()
    i = 1;
    g = (1/(sqrt(2*pi)*2))*exp((-.5)*(i/2)^2);
end

function t = egg(Tw, Ty, Ti)
    m = 67;
    d = 1.038;
    c = 3.7;
    k = (5.4 * 10^-3);
    t = (m^(2/3)*c*d^(1/3)*log(.76*(Ti - Tw)/(Ty - Tw)))/(k* pi^(2)*(4*pi/3)^(2/3));
end

function p = getPolar(c)
    if ((isfield(c, 'x') && isfield(c, 'y')) )
    p.r = sqrt(c.x^2 + c.y^2);
    p.phi = atan(c.y ./ c.x);
    end
end

function c = getCart(p)
    if ((isfield(p, 'r') && isfield(p, 'phi')) )
    c.x = p.r * cos(p.phi);
    c.y = p.r * sin(p.phi);
    end
end

function s = sizeDir (i)
    d = dir (i);
    n = size(d, 1);
    s = 0;
    for i = 1:n
        s=s+(d(i).bytes);
    end
end
