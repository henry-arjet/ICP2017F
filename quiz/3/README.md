**1:** '*' is for multiplying matricies, whereas .* makes it multiply each element separately. 
**2:** this would use a for loop that multiplied the two vectors at i and output to a veriable. In the example, this would be 
```
A = [1,0,3];
B = [2,3,7];
P = 0;
for i 1
    P = P + A(i)*B(i);
end
```
with P being the output 
**3:** 
```
function [ T ] = testString( I )
    T = isequal(I, 'MATLAB');
end
```
```
>> testString('MATLAB')

ans =

  logical

   1

>> testString('MATLAt')

ans =

  logical

   0
```
The two ways to do this are either to use ==, which is used in conditionals as in the example below, and the function isequal(), demonstrated above. == is just a check in conditionals that doesn't return anything. isequal(), a function, can write to a variable. 
```
function [ T ] = testString(I)
if(I == 'MATLAB')
    T = true;
else
    T = false;
end
```
**4:** | evaluates both sides of the statement, finding both and determining if either are true. If the first one is true, it will still go to check the second, even though that won't change if the full conditional is true or not, as one truth is enough to make any or true. ||, however, will stop if it finds any truth. This cuts down on time, because you're getting the same accuracy without having to evaluate everything, but also doesn't do all the operations. So if you're banking on the code in the || being carried out, it won't all the time and that can mess you up.

**5:**
```
x=a/b<10.0
```
**6:**
the SOA, as it gets all the grades in one array for easy operations
**7:**
```
function [ d, e ] = getRoots( a, b, c )
d = ((-b)+sqrt((b^2) - 4*1*c))/(2*a)
d = ((-b)-sqrt((b^2) - 4*1*c))/(2*a)
end
```

