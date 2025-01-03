clc; clear all;

%Euler
%C1 = 2+5i
%C2 = 5+10i
%Convert C1 and C2 in exponential form
%Determine M = C1*C2 and D = C/C2 in exponential form

C1 = complex(2,5);
C2 = complex(5,10);
C1_mag = abs(C1);
C1_angle = angle(C1);
C2_mag = abs(C2);
C2_angle = angle(C2);

%C = a+ib = |C|(cos(theta) + i*sin(theta)) = |C|exp(i*theta)
disp(['C1 in exponential form: ', num2str(C1_mag), 'exp(i*', num2str(C1_angle),')']);
disp(['C2 in exponential form: ', num2str(C2_mag), 'exp(i*', num2str(C2_angle), ')']);

%C1*C2
M_mag = C1_mag*C2_mag;
M_angle = C1_angle + C2_angle;
disp(['C1*C2 in exponential form: ', num2str(M_mag), 'exp(i*', num2str(M_angle), ')']);

%C1/C2
D_mag = C1_mag/C2_mag;
D_angle = C1_angle - C2_angle;
disp(['C1/C2 in exponential form: ', num2str(D_mag), 'exp(i*', num2str(D_angle), ')']);



%Generate a function for the differential equation
%Differenctial equation: dy/dx=y'=2x^2+y-2
%Condition: 0 <= x <= 5; y(0) = 0.1
%MATLAB iterates from 1, not from 0
%Hence, for the initial value y(0), we will consider it y(1)
%Number of step, N = 18

f = @(x,y) 2*x^2+y-2;
L = input('Enter the lower limit of x:');
U = input('Enter the upper limit of x:');
N = input('Enter the number of step:');
y1 = input('Enter initial value of y:');
Euler_series(f,L,U,N,y1);

function Sol=Euler_series(f,L,U,N,y1)
%Input parameters
%f: A function that provides the differential equation
%L: Lower limit of x
%U: Upper limit of x
%N: Number of steps
%y1: Initial value of y
%Output parameters:
%Sol: [x,y]; x: abscissas; y: ordinate

%Consider the step size, h

h = (U-L)/N;
y = zeros(N+1,1);
x = zeros(N+1,1);
x(1) = L;
y(1) = y1;
for i = 1:N
    y(i+1) = y(i) + h*f(x(i),y(i));
    x(i+1) = x(1) + i*h;
end

plot(x,y,'*');
grid on;
xlabel('x');
ylabel('y');
title('Differential equation: dy/dx=2x^2+y-2;0<=x<=5;y(0)=0.1');
Sol=[x,y];
end


 


