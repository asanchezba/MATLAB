%Variable definition of different data type
clc; clear;

%Numeric data types
var1 = int8(2); %Integer of signed 8-bit
var2 = 10.5; %Float: Double
var3 = true; %Logical

%Character and string type
var4 = 'MATLAB'; %Character
var5 = ["A","Sanchez"]; %String
var6 = {"A","Sanchez"}; %Cell array

%Date and time
var7 = datetime('22/07/2024','InputFormat','dd/MM/yy')
fprintf('var1 ='); disp(var1)
fprintf('var2 ='); disp(var2)
fprintf('var3 ='); disp(var3)
fprintf('var4 ='); disp(var4)
fprintf('var5 ='); disp(var5)
fprintf('var6 ='); disp(var6)
fprintf('var7 ='); disp(var7)

whos %to print details of all the variables stored in the workspace


