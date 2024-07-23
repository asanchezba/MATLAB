# Variables in MATLAB 

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

The _whos_ command prints the details of all the defined variables stored in the workspace. It provides the name, size, bytes
class, and attributes. 

After defining a variable, the assigned data can be reused at any time throughout the program, unless the variable is reassigned with new data, or cleared. 
- To erase all the variables type _clear_ or _clear all_
- To erase a specific variable type _clear x_
- To clear two specific variables type _clear x y_
- To clear only the command window type _clc_

### Data type conversion





