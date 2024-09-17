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
