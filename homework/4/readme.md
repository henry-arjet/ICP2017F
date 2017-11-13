**All problems not here are in their own functions or scripts**

**2:**   
```
>> timeit( @()ConvertTempFor([212, 32, 56, 78], 'F2C'))  
  100.0000         0   13.3333   25.5556  
ans =  
   1.8871e-04  
>> timeit( @()ConvertTempWhile([212, 32, 56, 78], 'F2C'))  
  100.0000         0   13.3333   25.5556  
ans = 
   1.0804e-04  
>> timeit( @()ConvertTempVec([212, 32, 56, 78], 'F2C'))  
  100.0000         0   13.3333   25.5556  
ans =  
   2.4542e-05  
```  
**4:** This function introduces inacuracy of rounding errors by performingthen reversing sqrt opperations on the number 2. First it takes 2, then suare roots it an n number of times, then squares it the same n times, which theoretically should equal 2, however, because the data is only stored to 16 digits as performance saving measure, some of the data is lost as the number is squarerooted, and is rounded. When the sqrts are reversed, the lost data doesn't come back. So for example sqrt (2) is 1.41421, but 1.414^2 is 1.999396. This is repeated with n growing from 1 to 60, and the difference between 2 and the final product growing as n aproaches 60.

**5:** This is also due to rounding error. The number decays exponentially, until it is small enough that when added to 1, it rounds down to 1.000000000000000 in a double precision float. The data after 16 digits is lost, so it's as if esp was never added.

**7 C:**
```
>> fib
Please enter a non-negative integer or type stop: 10
fib(10) = 55
average runtime: 6.2894e-06
Please enter a non-negative integer or type stop: 15
fib(15) = 610
average runtime: 5.8102e-05
Please enter a non-negative integer or type stop: 20
fib(20) = 6765
average runtime: 0.00062474
Please enter a non-negative integer or type stop: 25
fib(25) = 75025
average runtime: 0.0068879
Please enter a non-negative integer or type stop: 30
fib(30) = 832040
average runtime: 0.078232
Please enter a non-negative integer or type stop: 35
fib(35) = 9227465
average runtime: 0.8662
Please enter a non-negative integer or type stop: stop
>> fibLoop
Please enter a non-negative integer or type stop: 10
fib(10) = 55
average runtime: 2.4079e-06
Please enter a non-negative integer or type stop: 15
fib(15) = 610
average runtime: 2.3229e-06
Please enter a non-negative integer or type stop: 20
fib(20) = 6765
average runtime: 2.2889e-06
Please enter a non-negative integer or type stop: 25
fib(25) = 75025
average runtime: 2.3464e-06
Please enter a non-negative integer or type stop: 30
fib(30) = 832040
average runtime: 1.2692e-06
Please enter a non-negative integer or type stop: 35
fib(35) = 9227465
average runtime: 1.4289e-06
```
The loop solution is much faster. The difference is that the for loop does the math directly and straight through, where as recursion ends up doing way more processing