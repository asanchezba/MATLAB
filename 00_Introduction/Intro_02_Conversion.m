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

fprintf('Number to text conversion:\n');
fprintf('--------------------------------\n');
whos

% Text to number
clear;

var5 = '4'; % Character 
var5_conv = str2num(var5); % Conversion into double

var6 = '3.1416'; % String
var6_conv = str2num(var6); % Conversion into double

fprintf('Text to number conversion:\n');
fprintf('--------------------------------\n');
whos