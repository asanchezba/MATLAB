# Complex Numbers

## Introduction
The general form of a complex number is **a + i * b**, where _i_ refers to the imaginary unit, which is represented as i = sqrt(-1). 

### Regular Form
The rectangular form of a complex number can be represented as **C = a + i * b**, where _i_ is the imaginary number, _a_ and _b_ are coefficients and _C_ represent the complex number. In this complex, there are two parts: real and imaginary parts. _a_ represents the real part, whereas _b_ indicates the imaginary part. 
The formula mentioned above can generate the complex number if the real and imaginary values are known. 

### Polar Form
The polar form of any complex number is

<img width="131" alt="Captura de pantalla 2024-09-29 a las 20 00 30" src="https://github.com/user-attachments/assets/bff36a21-a79a-4868-bdf5-93001b423614">

Here, |C| is the absolute value or magnitude of the complex number and θ represents the angle. The absolute value is given by |C| = sqrt(a^2 + b^2) and the angle is given by θ = b/a rad = (b/a) X 180º/π degree. 

```matlab
%Recntangular complex number
a = 2;
b = 3;
C1 = a + i*b
C2 = complex(a,b)

%Polar complex number
[C_angle, C_mag] = cart2pol(a,b);
C_angle = C_angle*(180/pi);
C_polar = [C_mag, C_angle]

C_mag2 = sqrt(a^2 + b^2);
C_angle2 = atan(b/a)*(180/pi);
C_polar2 = [C_mag2, C_angle2]

C_mag3 = abs(C2);
C_angle3 = angle(C2)*(180/pi);
C_polar3 = [C_mag3, C_angle3]
```
To convert a complex number from rectangular to polar, we can use the above formula or the MATLAB unbuilt functions _abs()_ and _angle()_. Another way is to use _cart2pol()_. 

## Euler's Series
Euler's formula provides a relationship between trigonometric and exponential terms. 

<img width="322" alt="Captura de pantalla 2024-10-26 a las 20 05 19" src="https://github.com/user-attachments/assets/b7bf22f4-8607-4fb4-a142-433c95e55a66">

Where _e_ is the base of the natural logarithm, _x_ is any real number, and _i_ is the imaginary unit. 

As mentioned above, it is possible to convert a complex number from its polar form to cartesian form by using the following relationship:

a = |C| * cos(cosθ)

b = |C| * sin(sinθ) 

Therefore, the complex number in a cartesian format becomes:

C = |C| * (cos(cosθ) + i * sin(sinθ))

Implementing Euler's formula in the above one, the complex number can be represented in an exponential format as:

<img width="447" alt="Captura de pantalla 2024-10-26 a las 20 11 35" src="https://github.com/user-attachments/assets/9f1f3db5-af81-4c7e-844f-b00b1f396783">

#### Example
```matlab
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
```

### Application of Euler's Series for Solving Initial Value Problem
Euler's method can be used to solve the initial value problem as follows:

<img width="372" alt="Captura de pantalla 2024-11-03 a las 13 01 33" src="https://github.com/user-attachments/assets/197ecf47-10ef-49ef-9f19-565554ef070a">

The variable _x_ may have a certain range, defined as lower and upper limit values. The procedure for generating solutions to such problems using Euler's series is the following:
1. Deciding number of steps _(N)_ for iteration over the range of values _x_, based on which a step size _(h)_ will be determined. 
2. For each iteration, the values of _y_ and _x_ will be updated as follows:
<img width="494" alt="Captura de pantalla 2024-11-03 a las 13 05 16" src="https://github.com/user-attachments/assets/a4d87209-5f6c-4685-940c-241de4afa55e">

#### Example
<img width="557" alt="Captura de pantalla 2024-11-03 a las 13 21 20" src="https://github.com/user-attachments/assets/dad6067e-c8a9-4bf9-9459-d6165cb43b75">

```matlab
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
```

### Fourier Series
Fourier series is a series through which any periodic function can be represented as a summation of sine and cosine functions. It provides an opportunity to describe any periodic function in a trigonometric representation.

Consider a periodic function _f(t)_, with a period T. The Fourier series of this function is:

<img width="543" alt="Captura de pantalla 2024-12-20 a las 18 53 38" src="https://github.com/user-attachments/assets/b8649273-a329-4eb4-8a72-9b30ac6a3e9c" />

where:

<img width="306" alt="Captura de pantalla 2024-12-20 a las 18 54 16" src="https://github.com/user-attachments/assets/5c3fdaa0-e4ca-41bb-a32d-01f7d473e124" />


#### Example
```matlab
% Input: Square wave function
% T=2; Magnitude=1; Omega=1
t = -7:0.01:7;
x = 1-square(pi*(t+1));
plot(t,x,'LineWidth',1.5)
grid on;
hold on;

% Fourier Series
syms k t
omega = pi;
T = 2;
k = 1:5;
a_0 = (2/T)*int(2,t,0,1);
a_k = (2/T)*int(2*cos(k*omega*t),t,0,1);
b_k = (2/T)*int(2*sin(k*omega*t),t,0,1);
f = (a_0/2)+sum(a_k.*cos(k*omega*t))+sum(b_k.*sin(k*omega*t));
ezplot(f,[0,7])
grid on;
```

![untitled](https://github.com/user-attachments/assets/6641e3ca-f71e-4ffd-8b66-bc14a4648f42)

### Discrete Fourier Transform
Discrete Fourier Transform (DFT) is almost similar to continuous Fourier transform, except that in DFT, a finite input sequence is considered an input. In this method, any continuous signal is sampled for a finite length to make the input a finite discrete sequence.

Consider a sequence _x[k]_, for wich the DFT can be determined using:

<img width="710" alt="Captura de pantalla 2024-12-20 a las 19 31 31" src="https://github.com/user-attachments/assets/c3f02615-49c4-425c-a142-327b874402f8" />

Here, the length of the sequence is _N_.

It is also essential to study inverse DFT, which can be accomplished by using the following formula:

<img width="680" alt="Captura de pantalla 2024-12-20 a las 19 32 59" src="https://github.com/user-attachments/assets/2598329d-375c-4cb1-8e5b-277c9a3ba3d5" />

Here, the output of DFT is considered as input of the inverse DFT function, and we can reproduce the original sequence, _x[k]_, by implementing inverse DFT.

#### Example
Consider an input sequence, _x_ = [1 4 5 7]. Determine:


(i) Fourier transform of the input vector


(ii) Inverse Fourier transform of the output of (i)


```matlab
disp('Input sequence: ');
x = [1 4 5 7]
F = fft(x);
disp('Fourier transform of x: ');
F
inv_F = ifft(F);
disp('Inverse Fourier transform of F: ');
inv_F
```

### Taylor Series
The Taylor Series is a general formula to represent any function as the summation of infinite terms that incorporates the function's derivatives at a single point. The sum of this infinite series provides a finite value, which is equal to the original value of the function near that single point. 

The Taylor series of a real function _f(x)_ about a point _x = a_ can be represented as follows:

<img width="914" alt="Captura de pantalla 2024-12-20 a las 19 49 23" src="https://github.com/user-attachments/assets/e7282f46-9794-4353-bb97-bf3d66ce2417" />

In general format, this series can be represented as follows:

<img width="410" alt="Captura de pantalla 2024-12-20 a las 19 50 19" src="https://github.com/user-attachments/assets/5a8bc032-dbb2-41b0-9eef-8277cb5dd0f1" />

Here, _f^n_ represents the _n_th derivative of the function _f(x)_.


The higher order we can go of a Tylor series, the more accurate the result will be for a particular function at a certain point. MATLAB built-in function for the Taylor series is __taylor(f,var)__.


MATLAB function for Taylor series for a function _f_ at a point _var = 0_ up to fifth order is __taylor(f,var)__


MATLAB function for Taylor series for a function _f_ at a point _var = a_ up to fifth order is __taylor(f,var,a)__


MATLAB function for Taylor series for a function _f_ at a point _var = a_ up to _n_ order is __taylor(f,var,a,'order',n)__


#### Example
```matlab
clc; clear all;
% Taylor series expansion
% Function: f(x)=2*sin(x) at a point x=a=0.5;
% Taylor series expansion up to 4th and 10th order

syms x;
f = 2*sin(x);
a = 0.5;
T_4 = taylor(f,x,a,'order',4);
T_10 = taylor(f,x,a,'order',10);
disp('Taylor series expansion of 2*sin(x) at a=0.5 up to 4th order');
T_4
fplot(T_4,'b','LineWidth',1.5);
hold on;
fplot(T_10,'g','LineWidth',1.5);
hold on;
fplot(f,'r','LineWidth',1.5);
hold on;
xlim([-4 4]);
ylim([-4 2]);
grid on
legend('Taylor series up to 4th order', ...
    'Taylor series up to 10th order', ...
    'Original function: 2*sin(x)','Location','Best')
title('Taylor series of 2*sin(x) at a = 0.5')
```

![untitled2](https://github.com/user-attachments/assets/a420325c-21db-403b-9d06-e2a4b76d90cb)


### Equilibrium Point
The equilibrium point can be defined as the constant solution of a differential equation. It represents the steady-state points of a dynamic system. Consider a differential equation as follows:

<img width="183" alt="Captura de pantalla 2024-12-21 a las 10 23 32" src="https://github.com/user-attachments/assets/36aeb3af-0a4c-4901-b163-0ef09cbd933b" />

For such a differential equation, the equilibrium points will be the solutions of the following equation:

<img width="224" alt="Captura de pantalla 2024-12-21 a las 10 24 23" src="https://github.com/user-attachments/assets/97ff61b8-8fdc-4d52-aa11-9cd33fdd19cd" />

Here, the values of _y_ will be the equilibrium points, for satisfying the above condition. 

#### Example
Determine the equilibrium points of the following two differential equations:

<img width="215" alt="Captura de pantalla 2024-12-21 a las 10 25 58" src="https://github.com/user-attachments/assets/fffebb0e-592b-424b-add9-df358de85ee0" />

```matlab
clc; clear all;
% Two differential equations
% dy/dt = 4x^2-xy
% dx/dt = 2y-x^2
% Determine the equilibrium points of the system
% For determining equilibrium points consider,
% dy/dt = 0 and dx/dt = 0
% The solutions x and y will be the equilibrium points of the system

syms x y
[solx,soly] = solve(4*x^2-x*y == 0, 2*y-x^2 == 0);
disp('Equilibrium points: ')
E_point1 = [solx(1) soly(1)]
E_point2 = [solx(2) soly(2)]
```

### Energy Calculation
In an electrical system, the power can be represented using **S = P +jQ**, where, _S_, _P_, and _Q_ are apparent, real, and reactive power, respectively, and _j_ is the imaginary unit. Therefore, the electrical power can be considered as a complex number multiplied by scalar value time to calculate the electrical energy of a system. Hence, the electrical energy can be calculated as follows:

<img width="376" alt="Captura de pantalla 2024-12-21 a las 10 37 53" src="https://github.com/user-attachments/assets/9d5bb035-c83b-4b21-9579-0dfce128c7df" />

where _E_ is the electrical energy and _t_ represents the energy usage time. The units of _S_, _P_, and _Q_ are VA, W and VAR.

#### Example
An electrical system consumes 10 W real power and 20 VAR reactive power for 24h. Determine:

(i) Apparent power in rectangular form

(ii) Apparent power in polar form

(iii) Electrical energy


```matlab
clc; clear all;
% Real power, P = 10 W
% Reactive power, Q = 20 VAR
% Time, t = 24 hours = 86400 sec

P = 10; Q = 20; t = 86400;
% Rectangular form
S_rec = complex(P,Q);
disp('Apparent power in rectangular for: ')
S_rec
%Polar form
S_mag = abs(S_rec);
S_angle = angle(S_rec)*(180/pi); % Unit: Degree
S_polar = [S_mag,S_angle];
disp('Apparent power in polar form- [Magnitude Angle(Degree): ');
S_polar
% Electrical energy
E = P*t;
disp(['Electrical energy: ', num2str(E), ' Joule']);
```
















