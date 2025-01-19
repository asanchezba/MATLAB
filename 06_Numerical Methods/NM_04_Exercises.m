clc; clear all

% Exercise 1
% Gauss-Seidel method
% Set of equations
% F1(x,y,z) = 20x-2y-z==122
% F2(x,y,z) = 4x-60y+18z==76
% F3(x,y,z) = 2x-15y+35z==50
% Stopping criteria: Tolerance of (x,y,z) < 0.00001

fx = @(x,y,z) (1/20).*(122+2*y+z);
fy = @(x,y,z) (1/60).*(76-4*x-18*z);
fz = @(x,y,z) (1/35).*(50-2*x+15*y);
xo=0; yo=0; zo=0;
N = 100;
for j=1:N
    x = fx(xo,yo,zo);
    y = fy(xo,yo,zo);
    z = fz(xo,yo,zo);
    tol_x = abs(x-xo)/xo;
    tol_y = abs(y-yo)/yo;
    tol_z = abs(z-zo)/zo;
    fprintf('x%.5f Tol_x: %.5f y: %.5f Tol_y: %.5f z: %.5f Tol_z: %.5f \n',...
        x,tol_x,y,tol_y,z,tol_z);

    xo=x; yo=y; zo=z;
    % Stopping criteria
    if (tol_x<0.00001 && tol_y<0.00001 && tol_z<0.00001)
        break;
    end
end
fprintf('The solution after %dth iteration:\n',j);
fprintf('x: %f y: %f z: %.5f \n',x,y,z);

%% 
clc; clear all

% Exercise 2 (a)
% Newton raphson method
% Find the root of 3x+2cos(x)-5
% Stopping criteria: Tolerance < 0.00001

F = @(x) 3*x+2*cos(x)-5;
syms x
% Derivative
dF(x) = diff(F(x));
a=0;
b=2;
xo = mean([a b]);
N = 100;
for i=1:N
    x=xo-(F(xo)/dF(xo));
    tol=abs(x-xo)/xo;
    fprintf('x: %.5f Tolerance: %.5f \n',x,tol);
    xo=x;
    % Stopping criteria
    if (tol<0.00001)
        break
    end
end

fprintf('Root of the equation after %dth iteration: %.5f\n',i,x);
%% 
clc; clear all

% Exercise 2 (b)
% Newton raphson method
% Find the root of x^5-x-2
% Stopping criteria: Tolerance < 0.00001

F = @(x) x^5-x-2;
syms x
% Derivative
dF(x) = diff(F(x));
a=0;
b=2;
xo = mean([a b]);
N = 100;
for i=1:N
    x=xo-(F(xo)/dF(xo));
    tol=abs(x-xo)/xo;
    fprintf('x: %.5f Tolerance: %.5f \n',x,tol);
    xo=x;
    % Stopping criteria
    if (tol<0.00001)
        break
    end
end

fprintf('Root of the equation after %dth iteration: %.5f\n',i,x);
%% 
clc; clear all

% Exercise 3 (a)
% Runge-Kutta method
% Differential equation dy/dx = -4x^3-6x^2-10x+2
% Conditions: 0<=x<=2; y(0) = 5; Step size, h=0.2

F = @(x,y) -4*x^3-6*x^2-10*x+2;
h = 0.2;
x0 = 0;
y0 = 5;
xn = 2;
N = length(x0:h:xn);
for j=1:N-1
    k1 = h*F(x0,y0);
    k2 = h*F(x0+0.5*h,y0+0.5*k1);
    k3 = h*F(x0+0.5*h,y0+0.5*k2);
    k4 = h*F(x0+h,y0+k3);
    y(j) = y0+(1/6)*(k1+2*k2+2*k3+k4);
    x0 = x0+h;
    y0 = y(j);
end
x = 0.2:h:xn;
plot(x,y,'o-b','LineWidth',1.5);
xlabel('x');
ylabel('y');
title('Runge-Kutta method')
grid on
fprintf('The final solution for x = 2 is: %.5f\n', y(j));
%% 
clc; clear all

% Exercise 3 (b)
% Runge-Kutta method
% Differential equation dy/dx = xsin(y)+ycos(x)
% Conditions: 0<=x<=2; y(0) = 5; Step size, h=0.2

F = @(x,y) x*sin(y)+y*cos(x);
h = 0.2;
x0 = 0;
y0 = 5;
xn = 2;
N = length(x0:h:xn);
for j=1:N-1
    k1 = h*F(x0,y0);
    k2 = h*F(x0+0.5*h,y0+0.5*k1);
    k3 = h*F(x0+0.5*h,y0+0.5*k2);
    k4 = h*F(x0+h,y0+k3);
    y(j) = y0+(1/6)*(k1+2*k2+2*k3+k4);
    x0 = x0+h;
    y0 = y(j);
end
x = 0.2:h:xn;
plot(x,y,'o-b','LineWidth',1.5);
xlabel('x');
ylabel('y');
title('Runge-Kutta method')
grid on
fprintf('The final solution for x = 2 is: %.5f\n', y(j));

