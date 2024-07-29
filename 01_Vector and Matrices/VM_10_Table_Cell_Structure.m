% Table Array
% Headers: Battery name, Energy density, Lifecycle, Safety
clc; clear;

Battery_name = {'Li-ion';'Liquid super capacitor';'Lead acid'};
Energy_density = [5;2.5;2];
Life_cycle = [2;5;1.5];
Safety = {'High';'Low';'Moderate'};
TABLE = table(Battery_name,Energy_density,Life_cycle,Safety);

fprintf('Comparison among different battery types:\n');
fprintf('------------------------------------------\n');
disp(TABLE);

% Accessing each colum of the table

fprintf('Accessing the data of Battery_name column:\n');
disp(TABLE.Battery_name);
fprintf('Accessing the data of Energy_density column:\n');
disp(TABLE.Energy_density);
fprintf('Accessing the data of Lifecycle column:\n');
disp(TABLE.Life_cycle);
fprintf('Accessing the data of Safety column:\n');
disp(TABLE.Safety);


% Cell Array

A = cell(2,3);
A(1,:) = {3,4,4};
A(2,:) = {'A','B','C'};
fprintf('Cell Array, A:\n');
disp(A);


% Structure Array
Field1 = 'Battery_Name';
val_Field1 = {'Li-ion';'Liquid super capacitor';'Lead acid'};
Field2 = 'Energy_Density';
val_Field2 = [5,2.5,2];
Field3 = 'Life_Cycle';
val_Field3 = [2,5,1.5];
Field4 = 'Safety';
val_Field4 = {'High';'Low';'Moderate'};

fprintf('Structure array of different battery types and properties:\n');
S = struct(Field1,val_Field1,Field2,val_Field2,Field3,val_Field3,Field4,val_Field4)
fprintf('Accessing first field of the structure:\n');
disp(S(1));
fprintf('Accessing second field of the structure:\n');
disp(S(2));
fprintf('Accessing third field of the structure:\n');
disp(S(3));







