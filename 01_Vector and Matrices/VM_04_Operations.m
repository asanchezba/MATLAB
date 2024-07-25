% Operations on matrices
clc; clear;

A = [1 4 6; 2 5 7; 3 6 8];
B = [2 4 6; 3 5 7; 4 6 8];

%Addition
Add = A + B

% Substraction
Sub = A - B

X = [1 2 4; 2 5 6];
Y = [1 2; 3 4; 5 7];

% Multiplication
mul = X * Y

% Transpose
X_t = X'

% Determinant
det(A)

% Identity matrix
I = eye(4)

% Inverse matrix
X = [1 2 4; 3 2 1; 2 2 1];
inv(X)
