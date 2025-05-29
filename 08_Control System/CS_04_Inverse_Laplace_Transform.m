clear; clear all

% Example 4: Inverse Laplace Transform
syms t s
G = @(s) 6/((s-3)^2+36);
disp('Inverse laplace transform:')
g(t) = ilaplace(G(s))