%Exercicies

%1. Create a program that takes a numerical user input and it displays
%if it is within the 0–100 range
num = input('Enter a number:');
if (0 < num < 100 & 25 < num <= 50)
    fprintf('Inside range. First half')

elseif (0 < num < 100 & 50 < num <= 75)
        fprintf('Inside range.Second half')
else
    fprintf('Outside range')
end


%2. Write a MATLAB code using switch-case so that the users can 
% provide the given hexadecimal code as input to know the corresponding 
% colour.
code = input('Enter a hexadecimal colour code:', 's');
switch code
    case '#FF0000'
        disp(['The colour for the code: ', code, ' is Red'])
    case '#00FF00'
        disp(['The colour for the code: ', code, ' is Green'])
    case '#0000FF'
        disp(['The colour for the code: ', code, ' is Blue'])
    case '#FFA500' 
        disp(['The colour for the code: ', code, ' is Orange'])
    case '#FFFF00'
        disp(['The colour for the code: ', code, ' is Yellow'])
    case '#000000'
        disp(['The colour for the code: ', code, ' is Black'])
    case '#FFFFFF'
        disp(['The colour for the code: ', code, ' is White'])
    otherwise
        disp('Enter a correct code')
end

% 3. For two Cartesian coordinates (x1, y1) and (x2, y2), 
% determine the distance
x1 = 2;
x2 = 2;
y1 = 1;
y2 = 2;

[d] = distance(x1,y1,x2,y2);
fprintf('The distance between the points is: %f\n', d);

%4. Create a user-defined function “usercal,” which will take 
% two numbers as input from the user, and another number to determine 
% the mathematical operation to perform. 
num_1 = input('Enter number 1: ');
num_2 = input('Enter number 2: ');
operation = input('Enter 1 for addition, 2 for subtraction, 3 for multiplication: ');

if operation == 1
    result_sum = Summation(num_1, num_2);
    fprintf('The result of addition is: %f\n', result_sum);
elseif operation == 2
    result_sub = Subtraction(num_1, num_2);
    fprintf('The result of subtraction is: %f\n', result_sub);
elseif operation == 3
    result_mul = Multiplication(num_1, num_2);
    fprintf('The result of multiplication is: %f\n', result_mul);
else
    fprintf('Invalid operation entered\n');
end


% Function Definitions

% Function for distance calculation
function [d] = distance(x1, y1, x2, y2)
    d = sqrt((x1 - x2)^2 + (y1 - y2)^2);
end

% Function for Summation
function result_sum = Summation(input1, input2)
    result_sum = input1 + input2;
end

% Function for Subtraction
function result_sub = Subtraction(input1, input2)
    result_sub = input1 - input2;
end

% Function for Multiplication
function result_mul = Multiplication(input1, input2)
    result_mul = input1 * input2;
end