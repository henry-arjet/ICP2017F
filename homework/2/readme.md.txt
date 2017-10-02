1.  Type the following in the command window and submit the results. Briefy explain what each assignment does.

```
>> a = 1

a =

     1
% Sets var a to be 1
>> b = 'x'

b =

    'x'
% Sets var b to be char x

>> c = true

c =

  logical

   1
% Sets var c to be true/1 as a bool 

>> whos a b c
  Name      Size            Bytes  Class      Attributes

  a         1x1                 8  double               
  b         1x1                 2  char                 
  c         1x1                 1  logical              
% Reports the matrix size, memory size, and class of vars a b and c

>> a == c

ans =

  logical

   1
% Checks that double 1 is the same as bool 1, reports that it is
>> a + c

ans =

     2
% Sums double 1 and bool one to equal double 2
>> d = [1 2 3 4]

d =

     1     2     3     4
% Creates a 1x4 vector d with values 1 2 3 and 4


>> e = ['a' 'b' 'c' 'd']

e =

    'abcd'
% Creates a vector of chars 1x4, basically a string because they have no seperation as they are not in cells
    

>> f = ['abcd']

f =

    'abcd'
% exact same as e

>> g = {'a' 'b' 'c' 'd'}

g =

  1×4 cell array

    {'a'}    {'b'}    {'c'}    {'d'}

% Creates a vector of cells, each of which contains a char. This is how you get the seperation.
>> h = { a b c d}

h =

  1×4 cell array

    {[1]}    {'x'}    {[1]}    {1×4 double}
% creates a vector of cells, each now containing a var, which was already defined. If there had been 's, it would have treated them as chars instead of vars

>> whos d e f g h
  Name      Size            Bytes  Class     Attributes

  d         1x4                32  double              
  e         1x4                 8  char                
  f         1x4                 8  char                
  g         1x4               456  cell                
  h         1x4               491  cell                
% same as earlier, reports sizes and class of vars

```





2.  What would happen if you go beyond the range for a particular type? For example, the largest integer that can be stored in int8 is 127, and the smallest integer is -128, so what would happen if we type cast a larger integer to the type int8? Smaller integer? Use the built-in functions intwine and intmax to find the largest and smallest integers that can be stored in int16 and int32.

This would cause it to go to the highest/lowest number possible for that type.
```
>> int16(intmax)

ans =

  int16

   32767

>> int32(intmax)

ans =

  int32

   2147483647

>> int16(intmin)

ans =

  int16

   -32768

>> int32(intmin)

ans =

  int32

   -2147483648
```



3.  Think about what the results would be for the following expressions, and then type them in to the terminal to verify your answers. Briefly explain the results for each one.
```
>> 1\2 

ans =

     2
% devides 2 by 1

>> 1/2

ans =

    0.5000
% devides 1 by 2

>> int8(1/2)

ans =

  int8

   1
% answer would be .5, but is not int, so rounds up to 1

>> int8(1/3)

ans =

  int8

   0
% Again, rounded. .3333 rounds down to 0.
>> -5^2 


ans =

   -25
% The parser reads it as -(5^2)
>> (-5) ^ 2 

ans =

    25
% But when you force it to square -5, it does, and it's positive
>> 10-6/2 

ans =

     7
% Order of opperations
>> 5*4/2*3

ans =

    30
% Again, OoOps, 7th grade stuff
```
4.(a)  Define the following variables: 
```
>> a = [1,0;2,1]

a =

     1     0
     2     1

>> b= [-1,2;0,1]

b =

    -1     2
     0     1

>> c = [3;2]

c =

     3
     2

>> d = 5

d =

     5

```

4.(b)  What is the result of each of the following expressions? Briefly explain what MATLAB is doing for each operation.

```
>> a+b

ans =

     0     2
     2     2
% for each element of the matrix sums the a and b values for that specific positon,
% outputs as new matrix
>> a .* b

ans =

    -1     0
     0     1
%  Same as the last answer only with multiplication

>> a * b

ans =

    -1     2
    -2     5
>> a * c

ans =

    -1     2
    -2     5

>> a+c

ans =

     4     3
     4     3
% Artificially extended c by just putting two of them side to side, then added
>> a + d

ans =

     6     5
     7     6
%% same thing, filled up an identically sized matrix

a .* d
a * d 
```



5.  Provide three different methods of generating the matrix a, one method should use the diag() function, one should use the eye function, and one should use the zeros function.

>> a
a =
     2     0     0
     0     2     0
     0     0     2






6.  Download this code. This code is full syntax errors. Fix the errors and submit the corrected code with name script_full_of_errors_fixed.m in your folder for this HW. Explain in front of each corrected MATLAB statement, why the error occurred. Modify the last two variables so that they display,
```
>> Persian
Persian =
Persian is a human language
>> Spanish
Spanish = 
    'Spanish '    'is '    ' another'    'language'
```
Modify the last line such that for the last line the code displays,

Persian is not the same as Spanish

Explain these results.

%I switched into a string



7.  Use MATLAB help to find out how you can create a new directory named mynewdir from MATLAB command line. Then change the working directory the newly created directory. Then create a MATLAB script in this directory named myscript.m with the following code in it,

% First create an array from -2*pi to 2:pi
x = -2*pi:pi/20:2*pi;

% Calculate |sin(x)|
y = abs(sin(x));

plot(x,y);

Now on MATLAB command line, run the script by calling its name. What do you get? Save the output as a figure and submit it with your homework.
```
>> mkdir new
>> cd new
>> myscript
```




8.  Now change your working directory to the original directory before you created mynewdir directory. Try to run the script myscript you had created again, from MATLAB command line. What do you get? and why?
```
>> cd ..
>> mynewdir/myscript
Undefined function or variable 'mynewdir'.
```
This is because it isn't meant to reach through folders not on the path