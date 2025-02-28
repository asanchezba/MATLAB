clc; clear all

% Differentiator circuit
% Find output signal v_out(t)
% Find output at t=0.1 sec
% Find I_R and I_C at t=0.1 sec

R = 5; C = 0.5;
syms t
v = @(t) 2*sin(t);
v_out = @(t) -R*C*diff(v,t);
fprintf('The output signal:\n');
disp(v_out(t))
v_out = limit(v_out,t,0.1);
fprintf('The output voltage at t=0.1 sec: %.5f V\n',v_out);
I_R = -v_out/R;
I_C = limit(C*diff(v,t),t,0.1);
fprintf('\n');
fprintf('I_R at t=0.1 sec: %.5f A\n',I_R);
fprintf('\n');
fprintf('I_C at t=0.1 sec: %.5f A\n',I_C);