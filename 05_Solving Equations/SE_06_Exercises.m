clc; clear all

% Exercise 1
% Determine the rank

M = [-4 5; 8 -11];
N = [0.33 1 3.3; 0.5 0.45 -5.12; 2 -2 0];
disp('The rank of matrix M:');
rank(M)
disp('The rank of matrix N:');
rank(N)
%% 
clc

% Exercise 1
% Determine the inverse

disp('The inverse of matrix M:');
inv(M)
disp('The inverse of matrix N:');
inv(N)
%% 
clc

% Exercise 1
% Determine the eigenvalues and eigenvector

[vector_M,lamda_M] = eig(M);
disp('The eigenvalues of M:');
lamda_M = sum(lamda_M)
[vector_N,lamda_N] = eig(N);
disp('The eigenvalues of N:');
lamda_N = sum(lamda_N)
disp('The eigenvector of M:');
vector_M
disp('The eigenvector of N:');
vector_N
%% 
clc; clear all

% Exercise 2
% Solving quadratic equations
% x^2+5x+9=0

syms x
x_val = solve(x^2+5*x+9==0,x);
disp('The solutions are:');
x_val
%% 
clc; clear all

% Exercise 2
% Solving quadratic equations
% 101x^2+36x+255=4

syms x
x_val = solve(101*x^2+36*x+255==4,x);
disp('The solutions are:');
x_val
%% 
clc; clear all

% Exercise 2
% Solving quadratic equations
% 2.60x^2 + 5.34x - 7 = 7.44

syms x
x_val = solve(2.60*x^2+5.34*x-7==7.44,x);
disp('The solutions are:');
x_val
%% 
clc; clear all

% Exercise 2
% Solving quadratic equations
% 9x^2+3xy-2=-3; 4x^2+7xy+5/2=0

syms x y
[x_val,y_val] = solve(9*x^2+3*x*y-2==3,4*x^2+7*x*y+5/2==0);
disp('The solutions are:');
disp('x = ');
disp(x_val)
disp('y = ');
disp(y_val)
%% 
clc; clear all

% Exercise 2
% Solving quadratic equations
% 16x^2+xy-3=9x^2-11xy+2=7

syms x y
[x_val,y_val] = solve(16*x^2+x*y-3==9*x^2-11*x*y+2,9*x^2-11*x*y+2==7);
disp('The solutions are:');
disp('x = ');
disp(x_val)
disp('y = ');
disp(y_val)
%% 
clc; clear all

% Exercise 3
% 1st order differential equation
% dy/dx=3x+2y; y(0)=2

syms y(x)
diff_eq = diff(y,x) == 3*x+2*y;
condition = y(0) == 2;
disp('Solution:');
Sol_y(x) = dsolve(diff_eq,condition)
%% 
clc; clear all

% Exercise 3
% 1st order differential equation
% dy/dx=-7x+4y+2; y(0)=1

syms y(x)
diff_eq = diff(y,x) == -7*x+4*y+2;
condition = y(0) == 1;
disp('Solution:');
Sol_y(x) = dsolve(diff_eq,condition)
%% 
clc; clear all

% Exercise 3
% 2nd order differential equation
% d^2y/dx^2=5x^2+9dy/dx+2y; y(0)=2, y'(0)=1

syms y(x)
diff_eqn = diff(y,x,2) == 5*x^2+9*diff(y,x)+2*y;
condition1 = y(0) == 2;
dy = diff(y,x);
condition2 = dy(0) == 1;
condition = [condition1 condition2];
Sol_y(x) = dsolve(diff_eqn,condition);
vpa(Sol_y,2)
%% 
clc; clear all

% Exercise 3
% 2nd order differential equation
% d^2y/dx^2=-3x^2-dy/dx+2; y(0)=1, y'(0)=1

syms y(x)
diff_eqn = diff(y,x,2) == -3*x^2-diff(y,x)+2;
condition1 = y(0) == 1;
dy = diff(y,x);
condition2 = dy(0) == 1;
condition = [condition1 condition2];
Sol_y(x) = dsolve(diff_eqn, condition);
vpa(Sol_y,2)
%% 
clc; clear all

% Exercise 3
% 3rd order differential equation
% (dy/dx)^3=5x^2+11(dy/dx)^2+dy/dx+8
% Initial condition: y(0)=2, y'(0)=1, y''(0)=-1

syms y(x)
diff_eqn = diff(y,x,3) == 5*x^2+11*diff(y,x,2)+diff(y,x)+8;
dy = diff(y,x);
d2y = diff(y,x,2);
condition1 = y(0) == 2;
condition2 = dy(0) == 1;
condition3 = d2y(0) == -1;
condition = [condition1 condition2 condition3];
Sol_y(x) = dsolve(diff_eqn,condition);
vpa(Sol_y,2)
%% 
clc; clear all

% Exercise 3
% 3rd order differential equation
% (dy/dx)^3=-6x^2+(dy/dx)^2-23
% Initial condition: y(0)=1, y'(0)=0, y''(0)=1

syms y(x)
diff_eqn = diff(y,x,3) == -6*x^2+diff(y,x,2)-23;
dy = diff(y,x);
d2y = diff(y,x,2);
condition1 = y(0) == 1;
condition2 = dy(0) == 0;
condition3 = d2y(0) == 1;
condition = [condition1 condition2 condition3];
Sol_y(x) = dsolve(diff_eqn,condition);
vpa(Sol_y,2)
%% 
clc; clear all

% Exercise 3
% Partial differential equation
% del(F)/del(x)+7x^2=3
% F=x^2+4y+3

syms x y
F = x^2+4*y+3;
P_diff = diff(F,x);
disp('Solution:');
Sol_x = solve(P_diff+7*x^2==3,x);
vpa(Sol_x,2)
%% 
clc; clear all

% Exercise 3
% Partial differential equation
% del(F)/del(x)-2x^2=0
% F=3x^2-11y

syms x y
F = 3*x^2-11*y;
P_diff = diff(F,x);
disp('Solution:');
Sol_x = solve(P_diff-2*x^2==0,x);
vpa(Sol_x,2)
%% 
clc; clear all

% Exercise 4
% Integral equation
% Integration [log(x)^2]dx-2x

% Without limit
syms x y
I1 = int(log(x)^2,x);
disp('The solution without limit:')
y_sol = solve(I1-2*x==0,y)

% With limit of [0 2]
I2 = int(log(x)^2,x,0,2);
disp('The solution with limit:')
y_sol = solve(I2-2*x==0,y)
%% 
clc; clear all

% Exercise 4
% Integral equation
% Integration [2^x-e^y]dx

% Without limit
syms x y
I1 = int(2^x-exp(y),x);
disp('The solution without limit:')
y_sol = solve(I1==0,y)

% With li,it of [0 2]
I2 = int(2^x-exp(y),x,0,2);
disp('The solution with limit:')
y_sol = solve(I2==0,y)











