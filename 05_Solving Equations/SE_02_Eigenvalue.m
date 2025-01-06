clc; clear all

% Eigenvalue
X = [1 2 0; 0 5 0; 1 3 1];
disp('The eigenvalues of X are:')
eig(X)
%% 
[vector,lambda] = eig(X);
disp('The eigenvalues of X:')
lambda=sum(lambda)
disp('The eigenvector of X:')
vector