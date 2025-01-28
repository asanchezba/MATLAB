clc; clear all

% Wye to Delta conversion
Ry1 = 10;
Ry2 = 5;
Ry3 = 20;
Rd1 = (Ry1*Ry2+Ry2*Ry3+Ry3*Ry1)/Ry3;
Rd2 = (Ry1*Ry2+Ry2*Ry3+Ry3*Ry1)/Ry2;
Rd3 = (Ry1*Ry2+Ry2*Ry3+Ry3*Ry1)/Ry1;
fprintf('Equivalent delta configured resistances:\n');
fprintf('Rd1= %f Rd2= %f Rd3= %f\n',Rd1,Rd2,Rd3);
