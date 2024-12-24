clc; clear all

% Exercise 1: Take a user input for a complext number in rectangular form
% (a) Convert the complex number into polar form and seve it in a variable
% m

%Recntangular complex number
% c = a + i*b
a = input('Insert coefficient a of complex number: ');
b = input('Insert coefficient b of complex number: ');

[m_angle, m_mag] = cart2pol(a,b);
m_angle = m_angle*(180/pi);
m = [m_mag, m_angle];
disp(['Complex number in polar form: ', num2str(m_mag), '+ i*', num2str(m_angle)])


% (b) determine the magnitude and angle of the complex number
magnitude = m_mag
angle = m_angle

% (c) Consider another complex number n = 5-i. Determine m*n in exponential
% form
a = 5;
b = -1;
[n_angle, n_mag] = cart2pol(a,b);
n_angle = n_angle*(180/pi);
n = [n_mag, n_angle];

C_mag = m_mag*n_mag;
C_angle = m_angle+n_angle;
disp(['m*n in exponential form: ', num2str(C_mag), 'exp(i*', num2str(C_angle), ')'])


% Exercise 2
% Determine the Fourier transform of x and the inverse Fourier transform of
% the output
x = linspace(-2,2,10);
F = fft(x);
disp('Fourier transform of x: ');
F
inv_F = ifft(F);
disp('Inverse Fourier transform of F: ');
inv_F

 
% Exercise 3
% Taylor series
% Function: f(x)=2*cos(x)+3*sin(x) at a point x=a=0.6;
% Taylor series expansion up to 4th and 10th order

syms x;
f = 2*cos(x)+3*sin(x);
a = 0.6;
T_4 = taylor(f,x,a,'order',4);
T_10 = taylor(f,x,a,'order',10);
disp('Taylor series expansion of 2*cos(x)+3*sin(x) at a=0.6 up to 4th order');
T_4


% Exercise 4
% Series AC electrical circuit
% Resistance
R = 10;
% Capacitance
C = 4*10^(-6);
% Inductance
L = 20*10^(-3);
% Frequency
f = 60;

% X_L = Inductive Reactance
X_L = 2*f*pi*L;
% X_C = Capactive Reactance
X_C = -1/(2*f*pi*C);

% (a) Determine the impedance in both rectangular and polar form
% Rectangular form
Z_rec = R+i*(X_L-X_C);
disp('Impedance in rectangular form: ');
Z_rec

% Polar form
Z_mag = abs(Z_rec);
Z_angle = angle(Z_rec)*(180/pi);
Z_polar = [Z_mag, Z_angle];
disp('Impedance in polar form- [Magnitude Angle(Degree)]: ');
Z_polar

% Real power
P = 20;
% Reactive power
Q = 35;
% Time
t = 86400;

% (b) Calculate the apparent power in rectangular and polar form
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

% (c) Determine the electrical energy
E = P*t;
disp(['Electrical energy: ', num2str(E), ' Joule']);


% Exercise 5
% Develop a function for Euler's series, such that the function takes the
% eq., lower and upper limit, step number, and initial value to generate
% the values of x and y

% (a) dy/dx=y'=f(x,y)=5*x^4+x^2-x+2*y-14; 7<x<20; y(0)=0.2
f_a = @(x,y) 5*x^4+x^2-x+2*y-14;
L_a = 7; % lower limit of x
U_a = 20; % upper limit of x
N_a = 18; % number of step
y1_a = 0.2; % initial value of y
Euler_series_a(f_a,L_a,U_a,N_a,y1_a);

function Sol=Euler_series_a(f_a,L_a,U_a,N_a,y1_a)

% (b) dy/dx=y'=f(x,y)=x^2+5*x-y; -2<x<2; y(0)=0.05
f_b = @(x,y) x^2+5*x-y;
L_b = -2; % lower limit of x
U_b = 2; % upper limit of x
N_b = 18; % number of step
y1_b = 0.05; % initial value of y
Euler_series_b(f_b,L_b,U_b,N_b,y1_b);

function Sol=Euler_series_b(f_b,L_b,U_b,N_b,y1_b)

% Consider step size
h_a = (U_a-L_a)/N_a;
y_a = zeros(N_a+1,1);
x_a = zeros(N_a+1,1);
x_a(1) = L_a;
y_a(1) = y1_a;
for i = 1:N_a
    y_a(i+1) = y_a(i) + h_a*f_a(x_a(i),y_a(i));
    x_a(i+1) = x_a(1) + i*h_a;
end


plot(x_a,y_a,'*');
grid on;
xlabel('x');
ylabel('y');
title('Differential equation: dy/dx=f(x,y)=5*x^4+x^2-x+2*y-14; 7<x<20; y(0)=0.2');
Sol=[x_a,y_a];
end


h_b = (U_b-L_b)/N_b;
y_b = zeros(N_b+1,1);
x_b = zeros(N_b+1,1);
x_b(1) = L_b;
y_b(1) = y1_b;
for i = 1:N_b
    y_b(i+1) = y_b(i) + h_b*f_b(x_b(i),y_b(i));
    x_b(i+1) = x_b(1) + i*h_b;
end


plot(x_b,y_b,'*');
grid on;
xlabel('x');
ylabel('y');
title('Differential equation: dy/dx=f(x,y)=x^2+5*x-y; -2<x<2; y(0)=0.05');
Sol=[x_b,y_b];
end







