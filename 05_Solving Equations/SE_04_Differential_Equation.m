clc; clear all

% 1st order differential equation
% dy/dx=2*x+y

syms y(x)
diff_eq = diff(y,x) == 2*x+y;
disp('Solution without initial condition:');
Sol_y(x) = dsolve(diff_eq)
% If the initial condition y(0)=1
condition = y(0) == 1;
disp('Solution wiht initial condition:')
Sol_y(x) = dsolve(diff_eq,condition)
%% 
clc; clear all

% 2nd order differential equation
% (dy/dx)^2 = 2*x^2+3dy/dx-5
% Initial conditions: y(0)=1, y'(0)=1

syms y(x)
diff_eqn = diff(y,x,2) == 2*x^2+3*diff(y,x)-5;
condition1 = y(0) == 1;
dy = diff(y,x);
condition2 = dy(0) == 1;
condition = [condition1 condition2];
Sol_y(x) = dsolve(diff_eqn,condition)
%% 
clc; clear all

% 3rd order differential equation
% (dy/dx)^3 = 3*x^2+3*(dy/dx)^2-2*dy/dx+1
% Initial conditions: y(0)=1, y'(0)=0, y''(0)=1

syms y(x)
diff_eqn = diff(y,x,3) == 3*x^2+3*diff(y,x,2)-2*diff(y,x)+1;
dy = diff(y,x);
d2y = diff(y,x,2);
condition1 = y(0) == 1;
condition2 = dy(0) == 0;
condition3 = d2y(0) == 1;
condition = [condition1 condition2 condition3];
Sol_y(x) = dsolve(diff_eqn,condition)
%% 
clc; clear all

% Partial differential equation
% del(F)/del(x) - x^2 = 0
% F = 2*x^2+y-5

syms x y
F = 2*x^2+y-5;
P_diff = diff(F,x);
disp('Solution:')
Sol_x = solve(P_diff-x^2==0,x)


