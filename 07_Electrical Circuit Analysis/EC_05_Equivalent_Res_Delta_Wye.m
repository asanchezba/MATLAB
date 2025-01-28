clc; clear all

% Equivalent resistance with delta-wye conversion
% First step: Conversion into wye configuration
% Second step: Find Rs1 and Rs2
% Third step: Find Rp
% Fourth step: Find overall equivalent resistance, Req

R1 = 2; R2 = 4; R3 = 6; R4 = 3; R5 = 2;
Ry1 = (R1*R2)/(R1+R2+R3);
Ry2 = (R1*R3)/(R1+R2+R3);
Ry3 = (R2*R3)/(R1+R2+R3);
Rs1 = Ry2+R4;
Rs2 = Ry3+R5;
Rp = (Rs1*Rs2)/(Rs1+Rs2);
Req = Ry1+Rp;
fprintf('The equivalent resistance: %.3f ohms\n',Req);