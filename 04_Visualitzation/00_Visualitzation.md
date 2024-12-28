## Visualitzation

### Line plot
A line plot is the most basic and important form of graphics. A 2D line plot can be drawn by the _plot_ command, which offers several features, and user customization options.

```matlab
plot(value,value,'Line Color Line Style Marker','Linewidth',n)
```

The above plot command will plot a 2D line of _xvalue_ vs _yvalue_, and the rest of the features are to self-customise the plot. 

_Liner Color_: The colour of the plotted line can be specified, or MATLAB will use the default colour. There are some commands for the most common colours (Table below).

<img width="722" alt="Captura de pantalla 2024-12-27 a las 13 15 12" src="https://github.com/user-attachments/assets/a9e6f8c2-9b94-491e-a36d-d7aed8e555f3" />

Apart from the colours mentioned above, MATLAB also supports all combinations of red, green, and blue (RGB) colours, which are represented by a single vector in MATLAB. An RGB colour vector ranges from (0,255) individually. Therefore, a vector of [1 120 230] defines a specific colour; thus, a wide variety of colours can be formed. 

_Line Style_: Line style defines the nature of the line that will be used to plot the 2D line plot. The line can be solid, dashed, or any other form by introducing some specific symbols (Table below). MATLAB uses a solid line as the default line style. 

<img width="722" alt="Captura de pantalla 2024-12-27 a las 16 02 03" src="https://github.com/user-attachments/assets/1bf09348-60e1-47d3-8e53-bf8859436b1a" />

_Marker_: This feature allows marking specific points in a line plot by using a customised marker (Table below). 

<img width="631" alt="Captura de pantalla 2024-12-27 a las 16 03 24" src="https://github.com/user-attachments/assets/beafcddf-19e4-44b3-8d59-30dd8cf03a24" />

_Linewidth_: The width of the plotted line can be weighted by choosing a numerical value. By default, MATLAB will choose linewidth as 1. By increasing the number, the width can be customised. The standard procedure to add a linewidth feature in the plot command is to incorporate -'_Linewidth_', _n_ - command within the plot command, where _n_ represents a numerical value referring to the level of the weight of the linewidth. 

A plot command for input _x_ and _y_, with other features, can be written as shown in Figure below.

<img width="1076" alt="Captura de pantalla 2024-12-27 a las 16 09 42" src="https://github.com/user-attachments/assets/401cf41c-dafe-4b08-a8d1-c13d4a78ae66" />

**Basic Features** 

Some basic features of visualisation are not only restricted to be used in a line plot but also for other forms of visualisation (Table below).

<img width="1062" alt="Captura de pantalla 2024-12-27 a las 16 11 50" src="https://github.com/user-attachments/assets/2679dd52-69a8-4293-99ba-b677904141bd" />

#### Example 1: Line plot
A line plot of global temperature from 2010 to 2020 is shown below. In the output Figure, the x-axis represents the year, while the y-axis represents the temperature in degrees Celsius. 

```matlab
clc, clear all

% Line Plot
% Data: Global temperature in degree celcius (2010-2020)
year = 2010:1:2020;
temp = [14.46 14.55 14.48 14.67 14.82 15.16 14.83 ...
    14.88 14.89 15.05 14.78];
plot(year,temp,'b-o','linewidth',1.5);
xlabel('Years');
ylabel('Temperature (Degree celcius)');
title('Line plot of global temperature (2010-2020')
grid on;
```

![untitled](https://github.com/user-attachments/assets/903f69e0-0e07-42a4-9b6a-cdcf7c06c19d)

**Subplot**

Subplot is essential for visualisation when comparisons or decisions need to be made from the side-by-side display. In a subplot, multiple figures can be plotted separately in one frame side by side. For subplot multiple figures, _subplot_ command is used, where a dimension size is defined in the input to create a frame. For example, _subplot_(2,3,1) signifies the total figure window will create a subspace of two by the blocks, i.e., there will be six blocks available in the entire figure window arranged in two rows and three columns. The las numerical number 1 represents the placement -first block- where the next plot command will generate a sub-figure. 

#### Example 2: Subplot
The line plots of global temperatures over the years 2010–2020. Here, a subplot(1, 2, 1) is used before the first plot command, which signifies there will be two sub-figures in one row and two columns and the first sub-figure will be plotted in the first place. For plotting the second sub-figure in the second block (first row and second column), the subplot(1, 2, 2) command is used right after the plot command of the second plot.

```matlab
clc; clear all

% Subplot
% Data of global temperature from 2010:2020
% Temperature unit: degree celcius and farenhite

year = 2010:1:2020;
temp_C = [14.46 14.55 14.48 14.67 14.82 15.16 14.83 ...
    14.88 14.89 15.05 14.78];
temp_F = [58.028 58.19 58.064 58.406 58.676 59.288 ...
    58.694 58.78 58.802 59.09 58.604];
subplot (1,2,1);
plot(year,temp_C,'b-o','linewidth',1.5);
xlabel('Years');
ylabel('Temperature (degree celcius)');
title('Global temperature (2010-2020)')
grid on;
subplot(1,2,2);
plot(year,temp_F,'k-o','linewidth',1.5);
xlabel('Years');
ylabel('Temperature (farenhite)');
title('Global temperature (2010-2020)')
grid on;
```

![untitled2](https://github.com/user-attachments/assets/1a3424ec-7591-41d7-b0a4-91c93b45aead)

**Double-Axis Plot**

In a line plot, sometimes we need to plot two line plots in the same figure with the double-axis feature. For creating a double-axis feature, _yyaxis left_ command is used right before the first plot command, which defines the left y-axis. Similarly, _yyaxis right_ commands are used to define the right y-axis. Between the two plot commands, _hold on_ command is used to keep both plots. _hold on_ is usually used to hold the previously plotted figure until the _hold off_ command. If two _plot_ commands are used consecutively without _hold_on_ and _hold off_ commands, the first figure will be replaced by the second one. Using _hold on_ even multiple plots can be incorporated in one figure until we finish it by _hold off_ command.

#### Example 3: Double-Axis Plot
Price comparison of two energy commodities - steel and copper - from 2000 to 2020. The left y-axis represents the prices of copper, whereas the right y-axis signifies the prices of steel over the years. 

```matlab
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
```

![untitled3](https://github.com/user-attachments/assets/04cf1ade-674c-4d53-8661-99017d7b4975)


### Bar Plot
Bar plot facilitates better comparative analysis. 

```matlab
bar(value,value,'Bar color')
```

MATLAB offers some variations in bar plot visualisation, such as horizontal bar plots.

```matlab
barh(value,value,'Bar color')
```

#### Example 4: Bar plot
A bar plot shows the global CO2 emissions in Giga metric ton (Gt) from 2010-2020. 

```matlab
clc; clear all

% Bar plot
% Data: Global CO2 emissions (2010-2020)
year = 2010:1:2020;
CO2 = [30.5824 31.4595 31.806 32.3707 32.3886 32.3655 ...
    32.3747 32.8374 33.5133 36.4568 34.0752];
bar(year,CO2,'blue');
ylim([20 40]);
xlabel('Years');
ylabel('CO2 emission (Gt)');
title('Global CO2 Emissions (2010-2020)');
grid on;
```

![untitled](https://github.com/user-attachments/assets/bbea45a0-585d-43a2-8e20-d638552e63aa)

#### Example 5: Horizontal Bar Plot
The data on electricity consumption by different household entities as end-users in the USA (2018) is used to plot a horizontal bar. The unit considered for electricity consumption per household is kWh/household. From the output (Figure below), it is clear that the highest consumption/household is obtained from the air conditioning system, whereas the least is from refrigeration. To colour each bar individually, we have assigned the _barh_ plot to a variable _C_, through which we have accessed each bar, and assigned an RGB vector representing separated colours for each of them.

```matlab
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
```

![untitled2](https://github.com/user-attachments/assets/c68bc00e-33cb-4363-aca2-20692984a283)

### Area Plot
Area plot is another interesting and essential visualisation technique. The dimensions of the area matrix may vary according to the dataset. In the area plot, each feature is stacked over each other sequentially over the y-axis. 

```matlab
area(input_matrix)
```

### Surface Plot
Surface plot provides a 3D illustration that facilitates better visualisation interpretation. 

```matlab
surf(x,y,z)
```
Here, _x_, _y_, and _z_ are the input matrices, having the same dimension. The three inputs utilise a 3D coordinate system to create a surface plot.

### Pie Plot

```matlab
pie(x,explode)
```
Here, _x_ is the input vector, and _explode_ is an optional feature of the function. The _explode_ feature is used whenever single or multiple pieces of pie need to explode from their original position to signify their impact. 

#### Example 6: Pie Plot
The data of electricity consumption by different sectors in the USA (2018) is demonstrated using a pie plot. A subplot is used to demonstrate two pie plots side by side with and without the explode feature. In the first subplot, all the pieces are stuck together without the _explode_ feature. In the second subplot, we can see that all the pieces explode from their rigid position. In the code, explode represents a vector, where the value "0" indicates not explode, while the value "1" indicates to explode. 

```matlab
clc; clear all

% Pie Plot
% Data: Electricity consumption by different sectors in USA (2018)
% x: Percentage of Consumption in four different sectors in USA
x = [35.4,25.9,2,38.5];
subplot(1,2,1);
pie(x);
title('Without explode feature');
subplot(1,2,2);
explode = [1,1,1,1];
pie(x,explode);
title('With explode feature');
labels = {'Commercial','Industrial','Transportation','Residential'};
legend(labels,'Location','best');
```

![untitled3](https://github.com/user-attachments/assets/6a26e053-4b2e-433b-b231-07bd048775df)







