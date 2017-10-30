function o = genFunc(varargin)
    a = 0;
    b = 0;
    c = 0;
    if (nargin == 0)
        o = 0;
        return
    elseif (nargin == 1)
        if (~isreal(varargin{1}))
            nreal();
            return
        else
            a = varargin {1};
        end

    elseif  (nargin == 2)
        if (~isreal(varargin{1}) || ~isreal(varargin{2}))
            nreal();
            return
        else
            a = varargin {1};
            b = varargin {2};
        end
    elseif  (nargin == 3)
        if (~isreal(varargin{1}) || ~isreal(varargin{2}) || ~isreal(varargin{3}))
            nreal();
            return
        else
            a = varargin {1};
            b = varargin {2};
            c = varargin {3};
        end    
    else
        toomny();
        return
    end
    function q = evalFunc(x)
        q = a*x.^2 + b*x + c;
    end
    o = @evalFunc;
end
function toomny()
    disp('2 many args!!');
end

function nreal()
    disp('Man, that input is unreal, bro!');
end
%{
h1 = genFunc (1,2,0)

h1 =

  function_handle with value:

    @genFunc/evalFunc

h2 = genFunc (1,2)

h2 =

  function_handle with value:

    @genFunc/evalFunc

h1(5)-h2(5)

ans =

     0
%}

