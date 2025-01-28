clc; clear all

% Delta to wye conversion
Rd1 = 10;
Rd2 = 5;
Rd3 = 20;
Ry1 = (Rd1*Rd2)/(Rd1+Rd2+Rd3);
Ry2 = (Rd1*Rd3)/(Rd1+Rd2+Rd3);
Ry3 = (Rd1*Rd2)/(Rd1+Rd2+Rd3);
fprintf('Equivalent wye configured resistances:\n');
fprintf('Ry1= %f Ry2= %f Ry3= %f\n',Ry1,Ry2,Ry3);
