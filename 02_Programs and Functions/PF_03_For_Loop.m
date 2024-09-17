%For loop
clc; clear all

a = [2,4,6,8,10];
for i = 1:length(a)
    fprintf('Iteration: %d\n', i);
    fprintf('Value: %d\n', a(i))
end

