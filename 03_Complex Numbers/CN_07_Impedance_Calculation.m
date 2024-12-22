clc; clear all;

% Voltage
V_mag = 100;
V_angle = 60;
% Current
I_mag = 3;
I_angle = 30;

% Rectangular form
[Vx, Vy] = pol2cart(V_angle, V_mag);
V_rec = Vx+i*Vy;
[Ix, Iy] = pol2cart(I_angle, I_mag);
I_rec = Ix+i*Iy;
Z_rec = V_rec/I_rec;
disp('Impedance in rectangular form: ');
Z_rec

% Polar form
Z_mag = abs(Z_rec)
Z_angle = angle(Z_rec)*(180/pi)
Z_polar = [Z_mag, Z_angle];
disp('Impedance in polar form- [Magnituded Angle(Degree)]: ');
Z_polar


% Resistance
R = 5;
% Capacitance
C = 2*10^(-6);
% Inductance
L = 15*10^(-3);
% Frequency
f = 60;

% X_L = Inductive Reactance
X_L = 2*f*pi*L;
% X_C = Capactive Reactance
X_C = -1/(2*f*pi*C);
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