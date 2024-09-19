%Solve Quadratic Equations Using Functions
clc; clear all

%Quadratic Equation: 2x^2 + 3x + 5 = 0
a = 2; b = 3; c = 5;
[x1,x2] = quad_roots(a,b,c)

function [x1,x2] = quad_roots(a,b,c)
x1 = (-b + sqrt(b^2 + 4 * a *c))/(2*a);
x2 = (b + sqrt(b^2 + 4 * a *c))/(2*a);
end
