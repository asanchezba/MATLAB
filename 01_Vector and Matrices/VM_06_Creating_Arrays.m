% Arrays of zeros, ones
clc;clear;

row = 3;
col = 2;
A = zeros(row,col);
B = ones(row,col);
fprintf('Array of zeros:\n');
disp(A);
fprintf('Array of ones:\n');
disp(B);

% Arrays of random numbers

clc;clear;

row = 3;
col = 2;
num_min = 2;
num_max = 8;

% uniformly distributed random numbers
A = rand(row,col);
% normally distributed random numbers
B = randn(row,col);
% uniformly distributed random pseudo-integer
C = randi([num_min,num_max],[row,col]);

fprintf('Array of uniformly distributed random numbers:\n');
disp(A);
fprintf('Array of normally distributed random numbers:\n');
disp(B);
fprintf('Array of uniformly distributed random pseudo-integer:\n');
disp(C);




