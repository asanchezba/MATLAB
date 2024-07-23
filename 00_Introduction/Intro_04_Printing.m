% fprintf function
clc;clear;

var = int8(5);
var1 = 5.25;
fprintf('Usage of fprintf() function:');
fprintf('\n');
fprintf('The value of the variable is: %d\n', var);
fprintf('The value of the variable is: %f\n', var1);

% disp function 
clc;clear;
var = 5.25;
disp('Usage of disp() function:');
disp(['The value of the variable is: ', num2str(var)]);