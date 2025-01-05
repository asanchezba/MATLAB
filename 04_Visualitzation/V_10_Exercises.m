clc; clear all

% Exercise 1
% Data of products average price
% With subplots

months = 1:1:6;
price_A = [129 155 145 131 160 151];
price_B = [178 198 183 174 181 193];
subplot(1,2,1);
plot(months,price_A,'b-o','LineWidth',1.5);
xlabel('Months');
ylabel('Product A price (in Dollars)')
title('Price of Product A')
grid on;
subplot(1,2,2);
plot(months,price_B,'k-o','LineWidth',1.5);
xlabel('Months');
ylabel('Product B price (in Dollars)')
title('Price of Product B')
grid on;
%% 
clc; clear all

% Exercise 1
% Data of products average price
% With double axis

months = 1:1:6;
price_A = [129 155 145 131 160 151];
price_B = [178 198 183 174 181 193];
colororder({'k','b'})
yyaxis left
plot(months,price_A,'k-o','LineWidth',1.5);
xlim([1 6]);
ylim([120 200]);
xlabel('Months');
ylabel('Product A price (in Dollars)')
hold on
yyaxis right
plot(months,price_B,'b-o','LineWidth',1.5);
xlim([1 6]);
ylim([100 200]);
xlabel('Months');
ylabel('Product B price (in Dollars)')
legend({'Product A price','Product B price'},'Location','best');
title('Price of Product A and Product B');
grid on
%% 
clc; clear all

% Exercise 2
% Data of startup team members
% Horizontal bar chart

X = categorical({'HR','Software team','Electrical team','Mechanical team','Management team','Marketing team'});
Y = [5 15 22 17 8 10];
C = barh(X,Y);
C.FaceColor = 'flat';
xlabel('Number of employees');
title('Bar chart for the number of members in each team');
grid on
%% 
clc; clear all

% Exercise 2
% Data of startup team members
% Vertical bar chart

num_employees = [5 15 22 17 8 10];
team_members = {'HR','Software team','Electrical team','Mechanical team', ...
    'Management team','Marketing team'};
team_members_categorical = categorical(team_members);
team_members_categorical = reordercats(team_members_categorical, team_members);
bar(team_members_categorical,num_employees,'blue');
xtickangle(45);
ylim([0 25]);
ylabel('Number of employees');
title('Bar chart for the number of members in each team');
grid on 
%% 
clc; clear all

% Exercise 3
% Data of apparatus purchase for university laboratories
% 2D pie chart without and with explode feature of the smallest pie

num_equipment = [7 5 6 15 10];
subplot(1,2,1);
pie(num_equipment)
title('Without explode')
subplot(1,2,2);
explode = [0 1 0 0 0];
pie(num_equipment,explode);
title('With explode');
labels = {'Electrical machines','Communication trainer kit', ...
    'Electronics trainer kit','PLCs','Assorted IC boxes'};
legend(labels,'Location','best');
%% 
clc; clear all

% Exercise 3
% Data of apparatus purchase for university laboratories
% 3D pie chart without and with explode feature of the largest pie

num_equipment = [7 5 6 15 10];
subplot(1,2,1);
pie3(num_equipment)
title('Without explode')
subplot(1,2,2);
explode = [0 0 0 1 0];
pie3(num_equipment,explode);
title('With explode');
labels = {'Electrical machines','Communication trainer kit', ...
    'Electronics trainer kit','PLCs','Assorted IC boxes'};
legend(labels,'Location','best');
%% 
clc; clear all

% Exercise 4
% Data of temperature for a paticular location
% Heat map

T = [31.5 29.3 30.1 33.2 32.5 31.7; ...
    29.8 28.4 29.0 30.3 30.1 28.8; ...
    27.9 28.1 29.2 30.0 29.5 28.1; ...
    30.7 29.6 30.2 31.6 32.9 32.7; ...
    31.2 30.5 30.4 30.9 31.8 31.4; ...
    31.1 30.6 31.6 32.5 33.7 32.2];
Time = {'12 AM','4 AM','8 AM', '12 PM', '4 PM', '8 PM'};
Date = {'1 March', '2 March', '3 March', '4 March', '5 March', '6 March'};
H = heatmap(Time,Date,T);
H.Title = 'Temperature variation over the day';
H.YLabel = 'Date';





