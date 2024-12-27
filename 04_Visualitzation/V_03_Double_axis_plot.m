clc; clear all

% Double-axis plot
year = 2000:5:2020;
copper_price = [1813 3679 7535 5631 5786];
steel_price = [296 633 716 543 491];
colororder({'k','b'})
yyaxis left
plot(year,copper_price,'k-o','LineWidth',1.5);
xlim([2000 2020]);
ylim([0 8000]);
xlabel('Year');
ylabel('Copper Price ($/Tonne)');
hold on
yyaxis right
plot(year,steel_price,'b-o','LineWidth',1.5);
ylim([200 1000]);
ylabel('Steel Price ($/Tonne)');
legend({'Copper Price','Steel Pric'},'Location','Northwest');
title('Price of Copper and Steel (2000-2020')
grid on
