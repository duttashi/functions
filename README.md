# functions

Functions are "self contained" modules of code that accomplish a specific task. Functions usually "take in" data, process it, and "return" a result. Once a function is written, it can be used over and over and over again. Functions can be "called" from the inside of other functions.

Functions "Encapsulate" a task (they combine many instructions into a single line of code).

## Why do we Write Functions?

- They allow us to conceive of our program as a bunch of sub-steps. (Each sub-step can be its own function. When any program seems too hard, just break the overall program into sub-steps!)

- They allow us to reuse code instead of rewriting it.

- Functions allow us to keep our variable namespace clean (local variables only "live" as long as the function does). In other words, function_1 can use a variable called i, and function_2 can also use a variable called i and there is no confusion. Each variable i only exists when the computer is executing the given function.

- Functions allow us to test small parts of our program in isolation from the rest. 

## Steps to Writing a Function

- Understand the purpose of the function.
- Define the data that comes into the function from the caller (in the form of parameters)!
- Define what data variables are needed inside the function to accomplish its goal.
- Decide on the set of steps that the program will use to accomplish this goal. (The Algorithm)


**Reference**

https://www.cs.utah.edu/~germain/PPS/Topics/functions.html
