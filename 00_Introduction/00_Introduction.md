# Introduction

### Variables in MATLAB

The mostly used categories of data types of variables: 
- Numeric data type: integer, float (single and double), and logical
- Character and string: character, string and cell array
- Date and time

```matlab
% Variable definition

% Numeric data types
var1 = int8(2);   % Integer of signed 8-bit
var2 = 10.5;   % Float: Double
var3 = true;   % Logical

% Character and string type
var4 = 'MATLAB';   % Character
var5 = ["M", "Matlab"];   % String
var5 = {"M", "Matlab"};   % Cell array

% Date and time
var7 = datetime('23/07/2024', 'InputFormat', 'dd/MM/yy');
fprintf('var1 = ');   disp(var1)
fprintf('var2 = ');   disp(var2)
fprintf('var3 = ');   disp(var3)
fprintf('var4 = ');   disp(var4)
fprintf('var5 = ');   disp(var5)
fprintf('var6 = ');   disp(var6)
fprintf('var7 = ');   disp(var7)
whos
```

The ***whos*** command prints the details of all the defined variables stored in the workspace. It provides the name, size, bytes
class, and attributes. 

After defining a variable, the assigned data can be reused at any time throughout the program, unless the variable is reassigned with new data, or cleared. 
- To erase all the variables type ***clear*** or ***clear all***
- To erase a specific variable type ***clear x***
- To clear two specific variables type ***clear x y***
- To clear only the command window type ***clc***

### Data type conversion


| Number to text   | Description                               |
| ---------------- | ----------------------------------------- |
| int2str(number)  | Convert any integer number to a character |
| num2str(number)  | Convert any number to a character         |
| char(number)     | Convert any number to a character         |
| string(number)   | Convert any number to a string            |

| Text to number   | Description                                          |
| ---------------- | ---------------------------------------------------- |
| str2num(text)    | Convert any character or string into a double number |                
| str2double(text) | Convert any character or string into a double number |


```matlab
% Conversion data types
clc; clear;

% Number to text
var1 = int8(5); % Integer
var1_conv = int2str(var1); % Conversion into character

var2 = 2; % Double
var2_conv = int2str(var2); % Conversion into character

var3 = 2.5; % Double 
var3_conv = int2str(var3); % Conversion into character

var4 = 3; % Double 
var4_conv = int2str(var4); % Conversion into character

% Text to number
clear;

var5 = '4'; % Character 
var5_conv = str2num(var5); % Conversion into double

var6 = '3.1416'; % String
var6_conv = str2num(var6); % Conversion into double
```

### Recording a MATLAB session

The ***diary('Name')*** function records a MATLAB session and creates a file containing the keyboard inputs and the outputs. *'Name'*  indicates the name of the file in which the session will be recorded.

```matlab
% Diary function
clc; clear;

a = input('Enter a:');
b = input('Enter b:');
sum = a + b;
fprintf('Sumation: %d\n', sum);
diary('diaryFile.txt');
```

### Printing Output

Built-in functions ***fprintf()*** and ***disp()*** are used to print the output of a program. 

```matlab
fprintf('text')
fprintf('text%d', var)
fprintf('text%f', var)
fprintf('\n')
```
_'text'_ can be any string or character, and _var_ indicates the value of a variable that is required to be printed. Finally, _'\n'_ is used to shift to the next line.  

_fprintf()_ can be used to print both text and numbers in the command window. The input provided within the bracket will be printed in the command window as a string, or characters. If the defined value of any variable is required to be printed with text, the _fprintf(text%d, var)_ command can be utilized where _%d_ will be replaced by the value of the defined variable _var_. However, it is only true if the variable is an integer type. For printing the values of float type variables, _%f_ is used in place of _%d_. 

```matlab
% fprintf function
clc;clear;

var = int8(5);
var1 = 5.25;
fprintf('Usage of fprintf() function:');
fprintf('\n');
fprintf('The value of the variable is: %d\n', var);
fprintf('The value of the variable is: %f\n', var1);
```
_disp()_ is another command for printing the output.

```matlab
disp('text')
disp(var)
disp(['text', num2str(var)])
```
_text_ can be any string or character, and _var_ indicates the value of a variable that is required to be printed. 

In _disp()_ a new line shift occurs by default; hence, _'\n'_ notation is not needed. To print both strings and variables, it is necessary to convert the data types of the variables in a string format while using _disp()_.

```matlab
% disp function 
clc;clear;
var = 5.25;
disp('Usage of disp() function:');
disp(['The value of the variable is: ', num2str(var)]);
```

### Exercice 1

Perform the following operations and save the results in a variable. Demonstrate the variables using “whos” command:
-2*4^2
-(2*4)^2
-503+224-604 
-(10^3)/(9*2) 
-6.25*0.42^3.56
-Save “MATLAB is fun!” in a variable

### Exercice 2

Take two numerical inputs from the user and save them in variables num1 and num2. Perform the following operations and record the session using the _diary_ function:
-num1/num2 
-num1\num2
