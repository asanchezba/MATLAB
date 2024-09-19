# Programs and Functions

### Conditional Statements and Loops

Some important logical and relational operators, meanings, and examples are listed below. 
<img width="825" alt="Captura de pantalla 2024-09-17 a las 8 55 21" src="https://github.com/user-attachments/assets/8f4f33e5-7014-4b21-a802-9b6366edfda1">

### "If" statement 
It can be represented in three formats:

```matlab
if (logical condition)
  Executable
command...
end
```

```matlab
if (logical condition)
  Executable
command...
    else
  Executable
command...
end
```

```matlab
if (logical condition)
  Executable
command...
    elseif
  Executable
command...
    else
  Executable
command...
end
```
***Example 1***
```matlab
%If statement
clc; clear all

x = randi(20,1);
disp(['The value of x: ', num2str(x)])

if (x > 10)
    disp('x is greater than 10')
end
```
***Example 2***
```matlab
y = randi(100,1);
disp(['The value of y: ', num2str(y)])
%fprintf('The value of y: %d',y)

if (y >= 80)
    disp('Grade: A')
elseif (y >= 60 && y < 80)
    disp('Grade: B')
elseif (y >= 40 && y < 60)
    disp('Grade: C')
else
    disp('Grade: F')
end
```

### "Switch" statement 
Conditional statement through which multiple cases can be set up for executing different blocks of codes. Similar to the _if_ statement but provides more simplicity in terms of comprehension.

```matlab
%Switch structure
switch
  case (Case Expression)
    Executable Statement
 case (Case Expression)
    Executable Statement
..... ......
otherwise
  Executable Statement
end
```

***Example***

```matlab
%Switch statement
clc; clear all

x = input('Enter a month:','s')
switch x
    case 'January'
        disp(['Number of days in ', x, ': 31'])
    case 'February'
        disp(['Number of days in ', x, ': 28'])
    case 'March'
        disp(['Number of days in ', x, ': 31'])
    case 'April'
        disp(['Number of days in ', x, ': 30'])
    case 'May'
        disp(['Number of days in ', x, ': 31'])
    case 'June'
        disp(['Number of days in ', x, ': 30'])
    case 'July'
        disp(['Number of days in ', x, ': 31'])
    case 'August'
        disp(['Number of days in ', x, ': 31'])
    case 'September'
        disp(['Number of days in ', x, ': 30'])
    case 'October'
        disp(['Number of days in ', x, ': 31'])
    case 'November'
        disp(['Number of days in ', x, ': 30'])
    case 'December'
        disp(['Number of days in ', x, ': 31'])
    otherwise
        disp('Enter a correct name of month')
end
```

### "For" loop
It is a repetitive structure, where a certain task will be repeated systematically. This loop performs a set of functions defined by the statements a number of times. Within a for loop, other conditional statements, such as _if_ statement or nested _if_ statement, can be embedded as required.

```matlab
%structure
for index = values
  statements
end
```
***Example***

```matlab
%For loop
clc; clear all

a = [2,4,6,8,10];
for i = 1:length(a)
    fprintf('Iteration: %d\n', i);
    fprintf('Value: %d\n', a(i))
end
```

### User-Defined Functions
Apart from the built-in functions, MATLAB lets the user create a function to carry out a certain task. The user-defined function consists of three parts: input parameters, output variables, and executable commands. This function can be saved as a script file (MATLAB M-file) and used in a separate script file by calling out the function’s name. Both script files (Function file, Main Script file) need to be in the same directory path. 

Also, MATLAB allows to have another type of user-defined function named Anonymous function, which does not require to be saved as a separate script file. Instead, the function can be created on the same main script file and can be usable in the rest of the code in the same script.

```matlab
%structure

%Function with single input and single output
function out = functionName (input1)
Executable commands for a task
End

%Function with no input and single output
function out = functionName ()
Executable commands for a task
end

%Function with multiple inputs and single output
function out = functionName(input1, input2, ...)
Executable commands for a task
end

%Function with multiple inputs and multiple outputs
function [out1, out2, . . .] = functionName (input1, input2, ...)
Executable commands for a task
end
```

***Example 1***
```matlab
%User-Defined Functions
clc; clear all

[out1, out2] = myfunction(2, 10)

%Function definition
function [out1, out2] = myfunction(input1, input2)
out1 = 2*input1;
out2 = 2*input2;
end
```

***Example 2***
```matlab
% Define the anonymous function
myfunc = @(x) 2*x + 3;

% Call the anonymous function
result = myfunc(2)
```

***Example 3***
```matlab
% Call summation function
sum = Summation(2,5)

% Call subtraction function
sub = Subtraction(10,2)

% Call multiplication function
mul = Multiplication(14,7)

% Call division function
div = Division(14,7)

% Function for Summation
function sum = Summation(input1,input2)
sum = input1 + input2;
end

% Function for Subtraction
function sub = Subtraction(input1,input2)
sub = input1 - input2;
end

% Function for Multiplication
function mul = Multiplication(input1,input2)
mul = input1 * input2;
end

% Function for Division
function div = Division(input1,input2)
div = input1 * input2;
end
```

*NOTE: function definitions within a script must come after all executable code.


### Solve Quadratic Equations Using Functions
A user-defined function can be created to solve such quadratic equations for finding the roots.

```matlab
%Solve Quadratic Equations Using Functions
clc; clear all

%Quadratic Equation: 2x^2 + 3x + 5 = 0
a = 2; b = 3; c = 5;
[x1,x2] = quad_roots(a,b,c)

function [x1,x2] = quad_roots(a,b,c)
x1 = (-b + sqrt(b^2 + 4 * a *c))/(2*a);
x2 = (b + sqrt(b^2 + 4 * a *c))/(2*a);
end
```

***Exercicies***

1. Create a MATLAB program which will take a numerical user input. If the user input is within the 0–100 range, the program would display “Inside range”; otherwise, the program would display “Outside range.” Moreover, if the input is greater than 25 and less than or equal to 50, the program would additionally display “First half,” and if the number is more than 50 but less than or equal to 75, the program would additionally display “Second half.”

2. Hexadecimal codes of colors are vastly used in computer science. Write a MATLAB code using switch-case so that the users can provide the given hexadecimal code as input to know the corresponding color. If the hexadecimal color is wrong or is not available in the table, the code should output an error message: “The color code you entered is wrong/not available.”
<img width="533" alt="Captura de pantalla 2024-09-19 a las 16 04 04" src="https://github.com/user-attachments/assets/88874df7-6d36-4a00-a1d1-208a3fecb4a3">


4. For two Cartesian coordinates (x1, y1) and (x2, y2),the formula to determine the distance is
<img width="319" alt="Captura de pantalla 2024-09-19 a las 16 04 46" src="https://github.com/user-attachments/assets/65197fa5-adcd-4587-a2d3-117e8f7ec691">

Write a user-defined function “dis- tance” to take two coordinates as input and return the distance as the output.
Check the function for:
(a) (2,1) and (2,2)
(b) (3,5) and (1,6)

5. Create a user-defined function “usercal,” which will take two numbers as input from the user, and another number to determine the mathematical operation to perform. If the third number is 1, 2, or 3, addition, subtraction, or multiplication will be performed. If any other third number is entered, an error message “Wrong operation entered” will be demonstrated.




