% Manipulation of vectors and matrices
clc; clear;

% Definition of vector 1
V1 = [1 2 5]

% Definition of vector 2
V2 = [4 6 8]

% Definition of vector 3
V3 = [5 7 9]

% Formation of a matrix
M = [V1;V2;V3]

% Accessing a value from the matrix
M(2,3)

% Accessing the values in the first row of every column of matrix M
V1 = M(1, :)

% Accessing the values in the first column of every row of matrix M
V2 = M(:, 1)