clc; clear all

% Horizontal bar plot
% Data: Electricity consumption by household entities in USA
X = categorical({'Refrigeration','Water Heating','Lighting','Air Conditioning','Other'});
X = reordercats(X,{'Refrigeration','Water Heating','Lighting','Air Conditioning','Other'});
Y = [879 1056 1628 2545 2127];
C = barh(X,Y);
C.FaceColor = 'flat';
C.CData(1,:) = [0 1 1];
C.CData(2,:) = [0 0 1];
C.CData(3,:) = [0 0.4470 0.7410];
C.CData(4,:) = [0 1 0];
C.CData(5,:) = [0.4660 0.6740 0.1880];
xlabel('kWh/household');
title('Electricity consumption by household entities in USA');
grid on;
