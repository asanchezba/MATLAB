%User-Defined Functions
clc; clear all

% Define the anonymous function
myfunc = @(x) 2*x + 3;

% Call the anonymous function
result = myfunc(2)

% Call the regular function
[out1, out2] = myfunction(2, 10)

% Call sumation function
sum = Summation(2,5)

% Call subtraction function
sub = Subtraction(10,2)

% Call multiplication function
mul = Multiplication(14,7)

% Call division function
div = Division(14,7)

% Regular function definition
function [out1, out2] = myfunction(input1, input2)
    out1 = 2*input1;
    out2 = 2*input2;
end

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
div = input1 / input2;
end

