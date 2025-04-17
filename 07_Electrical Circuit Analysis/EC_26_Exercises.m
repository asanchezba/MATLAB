clc; clear all

% Exercise 1
% Determine the equivalent resistance of the circuit
% Verify ohm's law if the voltage varies from 1V to 12V

E = 1:12; R1 = 5; R2 = 7; R3 = 7; R4 = 7; R5 = 10;
R23 = (R2*R3)/(R2+R3);
R234 = (R23*R4)/(R23+R4);
Req = R1+R234+R5;
fprintf('Equivalent resistance: %f',Req);
I = E/Req; 
plot(E,I,'o-b','LineWidth',1.2);
xlabel('Voltage, Volt');
ylabel('Current, Amp');
title('Ohms Law');
grid on;
%% 
clc; clear all

%Exercise 2: Delta connected  circuit
R1 = 0.2; R2 = 0.5; R3 = 1; R4 = 0.8; R5 = 1.44;

%(a) Determine the equivalent resistance
Ry1 = (R1*R2)/(R1+R2+R3);
Ry2 = (R1*R3)/(R1+R2+R3);
Ry3 = (R2*R3)/(R1+R2+R3);
Rs1 = Ry2+R4;
Rs2 = Ry3+R5;
Rp = (Rs1*Rs2)/(Rs1+Rs2);
Req = Ry1+Rp;
fprintf('The equivalent resistance: %.3f \n',Req);
%% 
%Exercise 2

%(b) Determine the current if the voltage is 6V
V = 6;
I = V/Req;
fprintf('The current: %.3f A',I);
%% 
clc; clear all

% Exercise 3
% (a) Create a function voltdiv() to calculate the divided voltages 

R1 = 2; R2 = 4; R3 = 8; V = 24;
VR1 = (R1/(R1+R2+R3))*V;
VR2 = (R2/(R1+R2+R3))*V;
VR3 = (R3/(R1+R2+R3))*V;
fprintf('Voltage across the resistance R1: %.3f V\n',VR1);
fprintf('Voltage across the resistance R2: %.3f V\n',VR2);
fprintf('Voltage across the resistance R3: %.3f V\n',VR3);
%% 
% Exercise 3
%(b) Create a function curdiv() to calculate the divided currents

I = 8;
I1 = (R2/(R1+R2))*I;
I2 = (R1/(R1+R2))*I;
fprintf('Current through the resistance R1, I1: %.3f A\n',I1);
fprintf('Current through the resistance R2, I2: %.3f A\n',I2);
%% 
clc; clear all

% Exercise 4 Thevenin
% (i) Thevenin's voltage, Vth
% (ii) Thevenin's equivalent resistance, Rth
% (iii) The current flowing through the load resistance
% (iv) Vary the load resistance starting from 1 to 20 ohms, and determine
% the output power for all scenarios to prove the maximum power transfer
% theorem; also determine the maximum output power
R1 = 4; R2 = 9; RL = 5; V = 12;

Vth = (R2/(R2+R1))*V;
Rth = (R1*R2)/(R1+R2);
IRL = Vth/(Rth+RL);
fprintf('Thevenin voltage: %.3f V\n',Vth);
fprintf('Thevenin equivalent resistance: %.3f ohms\n',Rth);
fprintf('Load current: %.3f V\n',IRL);

RL = 1:1:20;
for i=1:1:20
    I(i) = Vth/(Rth+RL(i));
    Power(i) = I(i)^2*RL(i);
end

plot(RL,Power,'o-b','LineWidth',1.2);
xlabel('Load resistance, R_L (Ohms)');
ylabel('Output power, P (W)');
title('Maximum power transfer theorem');
grid on;
%% 
clc; clear all

% Exercise 5 
% Determine the apparent power S, and the power factor of a series RLC
% circuit

% (a) P = 50 W and Q = 13 Var
P=50; Q=13;

disp('Apparent power:')
S = P+i*Q
S_mag = abs(S);
S_angle = angle(S)*(180/pi);
fprintf('Apparent power in polar form:\n');
fprintf('|S| = %.3f VA Power angle = %.3f degree\n',S_mag,S_angle);
PF = cos(S_angle);

if Q>0
    fprintf('Power factor = %.3f; Lagging\n',PF);
elseif Q<0
    fprintf('Power factor = %.3f; Leading\n',PF);
else
    fprintf('Power factor = %.3f; Unity\n',PF);
end

fprintf('\n');

% (b) P = 12 W and Q = 2.3 Var
P=12; Q=2.3;

disp('Apparent power:')
S = P+i*Q
S_mag = abs(S);
S_angle = angle(S)*(180/pi);
fprintf('Apparent power in polar form:\n');
fprintf('|S| = %.3f VA Power angle = %.3f degree\n',S_mag,S_angle);
PF = cos(S_angle);

if Q>0
    fprintf('Power factor = %.3f; Lagging\n',PF);
elseif Q<0
    fprintf('Power factor = %.3f; Leading\n',PF);
else
    fprintf('Power factor = %.3f; Unity\n',PF);
end

fprintf('\n');
%% 
clc; clear all

% Exercise 6: Delta-connected system
% (a) Determine if the system is balanced or unbalanced
% (i) Phase currents IAB, IBC and ICA
% (ii) Line currents IA, IB and IC

% Line to line voltages
V_AB = 100*cos(0)+i*100*sin(0);
V_BC = 110*cos(120*(pi/180))+i*110*sin(120*(pi/180));
V_CA = 120*cos(240*(pi/180))+i*120*sin(240*(pi/180));

%Impedances
Z1 = 8*cos(25*(pi/180))+i*8*sin(25*(pi/180));
Z2 = 14*cos(55*(pi/180))+i*14*sin(55*(pi/180));
Z3 = 18*cos(-23*(pi/180))+i*18*sin(-23*(pi/180));

% Phase currents
I_AB = V_AB/Z1;
I_BC = V_BC/Z2;
I_CA = V_CA/Z3;
I_AB_mag = abs(I_AB);
I_AB_ang = angle(I_AB)*(180/pi);
I_BC_mag = abs(I_BC);
I_BC_ang = angle(I_BC)*(180/pi);
I_CA_mag = abs(I_CA);
I_CA_ang = angle(I_CA)*(180/pi);
fprintf('Phase currents:\n');
fprintf('I_AB = %.3f A        Angle= %.3f degree\n',I_AB_mag,I_AB_ang);
fprintf('I_BC = %.3f A        Angle= %.3f degree\n',I_BC_mag,I_BC_ang);
fprintf('I_CA = %.3f A        Angle= %.3f degree\n',I_CA_mag,I_CA_ang);

% Line currents
I_A = I_AB-I_CA;
I_B = I_BC-I_AB;
I_C = I_CA-I_BC;
I_A_mag = abs(I_A);
I_A_ang = angle(I_A)*180/pi;
I_B_mag = abs(I_B);
I_B_ang = angle(I_B)*180/pi;
I_C_mag = abs(I_C);
I_C_ang = angle(I_C)*180/pi;
fprintf('Line currents:\n');
fprintf('I_A = %.3f A        Angle= %.3f degree\n',I_A_mag,I_A_ang);
fprintf('I_B = %.3f A        Angle= %.3f degree\n',I_B_mag,I_B_ang);
fprintf('I_C = %.3f A        Angle= %.3f degree\n',I_C_mag,I_C_ang);

% (b) Determine if the system is balanced or unbalanced
% (i) Phase currents IAB, IBC and ICA
% (ii) Line currents IA, IB and IC

% Line to line voltages
V_AB = 100*cos(0)+i*100*sin(0);
V_BC = 110*cos(120*(pi/180))+i*110*sin(120*(pi/180));
V_CA = 120*cos(240*(pi/180))+i*120*sin(240*(pi/180));

%Impedances
Z = 5*cos(30*(pi/180))+i*5*sin(30*(pi/180));

% Phase currents
I_AB = V_AB/Z;
I_BC = V_BC/Z;
I_CA = V_CA/Z;
Ip = abs(I_AB);
I_AB_ang = angle(I_AB)*(180/pi);
I_BC_ang = angle(I_BC)*(180/pi);
I_CA_ang = angle(I_CA)*(180/pi);
fprintf('Phase currents:\n');
fprintf('I_AB = %.3f A        Angle= %.3f degree\n',Ip,I_AB_ang);
fprintf('I_BC = %.3f A        Angle= %.3f degree\n',Ip,I_BC_ang);
fprintf('I_CA = %.3f A        Angle= %.3f degree\n',Ip,I_CA_ang);

% Line currents
I_A = I_AB-I_CA;
I_B = I_BC-I_AB;
I_C = I_CA-I_BC;
IL = abs(I_A);
I_A_ang = angle(I_A)*180/pi;
I_B_ang = angle(I_B)*180/pi;
I_C_ang = angle(I_C)*180/pi;
fprintf('Line currents:\n');
fprintf('I_A = %.3f A        Angle= %.3f degree\n',IL,I_A_ang);
fprintf('I_B = %.3f A        Angle= %.3f degree\n',IL,I_B_ang);
fprintf('I_C = %.3f A        Angle= %.3f degree\n',IL,I_C_ang);

%% 
clc; clear all

% Exercise 7
% (a) Determine the gain and output voltage of the inverting amplifier
R1 = 10; R2 = 14; V_in = 24;

V_out = -(R2/R1)*V_in;
G = V_out/V_in;
fprintf('Output voltage: %.2f V\n',V_out);
fprintf('Gain: %.2f\n', G);

% (b) Determine the gain and output voltage of the non-inverting amplifier
R1 = 5; R2 = 7; V_in = 12;

V_out = (1+(R2/R1))*V_in;
G = V_out/V_in;
fprintf('Output voltage: %.2f V\n',V_out);
fprintf('Gain: %.2f\n', G);

%% 
clc; clear all

% Exercise 8
% (a) For a differentiator circuit, find output signal V_out(t),  
% and the output voltage, I_R and I_C of the circuit at 0.5s

R=10; C=0.5;
syms t
v = @(t) 6*cos(t)^2;
v_out = @(t) -R*C*diff(v,t);
fprintf('The output signal:\n');
disp(v_out(t))
v_out = limit(v_out,t,0.5);
fprintf('The output voltage at t=0.5 sec: %.5f V\n',v_out);
I_R = -v_out/R;
I_C = limit(C*diff(v,t),t,0.5);
fprintf('\n');
fprintf('I_R at t=0.5 sec: %.5f A\n',I_R);
fprintf('\n');
fprintf('I_C at t=0.5 sec: %.5f A\n',I_C);

% (b) For an integrator circuit, find output signal V_out(t),  
% and the output voltage, I_R and I_C of the circuit at 0.5s
fprintf('\n')

R = 12; C = 0.2;
syms t
v = @(t) cos(t)^2/sin(t);
v_out = @(t) (-1/R*C)*int(v,t);
fprintf('The output signal:\n');
disp(v_out(t))
v_out = limit(v_out,t,0.5);
fprintf('The output voltage at t=0.5 sec: %.5f V\n',v_out);
I_R = -v_out/R;
I_C = limit(C*diff(v,t),t,0.5);
fprintf('\n');
fprintf('I_R at t=0.5 sec: %.5f A\n',I_R);
fprintf('\n');
fprintf('I_C at t=0.5 sec: %.5f A\n',I_C);














