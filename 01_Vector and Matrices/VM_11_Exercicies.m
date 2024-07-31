% Exercicies
clc;clear;


% Exercice 1
MatA = [4 7 1;7 2 3;5 5 9];
MatB = [6 0 4;9 8 1;7 5 2];
MatC = [2 5 3;0 17 9;8 0 1];

% a) Addition
Add = MatA + MatB

% b) Substraction
Sub = MatB - MatC

% c) Division
Div = MatA/MatC

% d) Transpose of MatB
MatB_t = MatB'

% e) Determinant of MatC
Det = det(MatC)

% f) Inverse MatA
Inv = inv(MatA)

% g) Horizontally concatenate MatB and MatC
A = [MatB,MatC]

% h) Vertically concatenate MatC and MatA
B = [MatC;MatA]



% Exercice 2: Mean, variance, standard deviation, and mode 
a = linspace(2,20,100);

mean_a = mean(a)
variance_a = var(a)
std_a = std(a)
mode_a = mode(a)


% Exercice 3
Serial_Number = [14;32;50;6;52];
Element_Name = {'Silicon';'Germanium';'Tin';'Carbon';'Tellurium'};
Element_Symbol = {'Si';'Ge';'Sn';'C';'Te'};
Bandgap = [1.12;0.67;0.08;5.47;0.33];
TABLE = table(Serial_Number,Element_Name,Element_Symbol,Bandgap);

fprintf('Semiconductors types:\n');
fprintf('------------------------------------------\n');
disp(TABLE);

% Structure Array
Field1 = 'Serial_Number';
val_Field1 = [14;32;50;6;52];
Field2 = 'Element_Name';
val_Field2 = {'Silicon';'Germanium';'Tin';'Carbon';'Tellurium'};
Field3 = 'Element_Symbol';
val_Field3 = {'Si';'Ge';'Sn';'C';'Te'};
Field4 = 'Bandgap';
val_Field4 = [1.12;0.67;0.08;5.47;0.33];

S = struct(Field1,val_Field1,Field2,val_Field2,Field3,val_Field3,Field4,val_Field4)

index = find(strcmp({S.Element_Name}, 'Tin'));
S(index).(Field4) = 0.07;
disp(S(3))


