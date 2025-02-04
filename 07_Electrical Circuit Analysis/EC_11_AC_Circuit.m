clc; clear all

% AC Circuit
% v(t) = 10 sin(2*pi*f*t)
% Determine: Peak voltage, Vp

f=60; 
t=0:0.0001:0.1;
v = 2*sin(2*pi*f*t);
plot(t,v,'LineWidth',1.5);
xlabel('Time (sec)');
ylabel('Voltage (vol)');
ylim([-2.5 2.5]);
grid on;

Vp = max(abs(v));
fprintf('Peak voltage: %.3f\n',Vp);

% Determine: Peak to peak voltage, Vpp
Vpp = 2*Vp;
fprintf('Peak to peak voltage: %.3f\n',Vpp);

% Determine: RMS voltage, V_rms
V_rms = (1/sqrt(2))*Vp;
fprintf('RMS voltage: %.3f\n',V_rms);

% Determine: Average voltage, V_avg
V_avg = (2/pi)*Vp;
fprintf('Average voltage: %.3f\n',V_avg);

% Determine: Instantaneous voltage at T = 0.02 sec, v_inst
T = 0.02;
V_inst = 2*sin(2*pi*f*T);
fprintf('Instantaneous voltage at T=0.02 sec: %.3f\n',V_inst);

