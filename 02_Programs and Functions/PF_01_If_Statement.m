%If statement
clc; clear all

x = randi(20,1);
disp(['The value of x: ', num2str(x)])

if (x > 10)
    disp('x is greater than 10')
end


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


