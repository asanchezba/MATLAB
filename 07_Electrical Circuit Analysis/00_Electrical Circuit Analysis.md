## 8.1. Introduction
The electrical circuit analyses can be divided into DC and AC circuits. Some of the important theorems and methods to solving individual circuit problems are explained in this chapter, along with two electrical components - an operational amplifier and a transistor.

## 8.2. DC Circuit Analysis
### 8.2.1. Ohm's Law
Ohm's law demonstrates the relationship between voltage, current, and resistance, as shown in the following equation, which considers constant temperature.

$$V = I·R$$

where $$V$$ is the voltage, $$I$$ is the current, and $$R$$ is the resistance of a DC circuit.

#### Example 1: Ohm's Law
Consider a DC series circuit whose voltage across a resistance changes within the range of 1 to 10 V, if the resistance is 5 ohms, plot a graph showing the changes of current in accordance with the changes of voltage.

```matlab
clc; clear all

% Ohm's Law: V=IR
% Voltage, V=[1:10]
% Resistance, R=5 ohms
% Plot voltage vs current
V = 1:10;
R = 5;
I = V/R;
plot(V,I,'o-b','LineWidth',1.2);
xlabel('Voltage, Volt');
ylabel('Current, Amp');
title('Ohms Law');
grid on;
```
![untitled](https://github.com/user-attachments/assets/fce649a9-e615-41c7-b049-3943bfa9e68c)



### 8.2.2. Equivalent Resistance
In an electrical circuit, the equivalent resistance signifies the overall resistance of a circuit, where the multiple resistances can be connected in series, parallel, or a combination of both. If multiple resistances are connected in series, the equivalent resistance is the summation of all of them. Therefore, for a series-connected resistive circuit, the equivalent resistance will be as shown in the following equation.

$$R_{eq} = R_{1}+R_{2}$$

where $$R_{1}$$ and $$R_{2}$$ are the two resistances connected in series.

For a parallel or shunt-connected circuit, the equivalent resistance can be calculated as follows:

$$R_{eq} = \frac{1}{R_{1}} + \frac{1}{R_{2}} = \frac{(R_{1} · R_{2})}{(R_{1} + R_{2})}$$

<p align="center"><img width="535" alt="Captura de pantalla 2025-01-24 a las 19 23 46" src="https://github.com/user-attachments/assets/31ab512c-439e-4914-b0c6-15d294c7c903" /></p>
<p align="center"> <em>Figure 1: A series-parallel resistive circuit </em></p>

In the circuit in *Figure 1*, $$R_{2}$$ and $$R_{3}$$ are connected in parallel, with $$R_{1}$$ in series. Therefore, the equivalent resistance of the circuit can be written as follows:

$$R_{eq} = R_{1} + (R_{2} || R_{3}) = R_{1} + \frac{(R_{2} · R_{3})}{(R_{2} + R_{3})}$$

#### Example 2: Equivalent Resistance
Determine the equivalent resistance for the circuit shown in Figure 1 if $$R_{1} = 10$$; $$R_{2} = 5$$; $$R_{3}$$ ohms.

```matlab
clc; clear all

% Equivalent resistance
% R1 + (R2||R3)
R1 = 10;
R2 = 5;
R3 = 4;
Equivalent_R = R1 + ((R2*R3)/(R2+R3));
fprintf('Equivalent resistance: %f',Equivalent_R);
```

### 8.2.3. Delta-Wye Conversion
In some cases, the resistance of a circuit may not be connected either in series or parallel. That's when delta-wye comes in handy. Consider the following circuit in Figure 2, where $$R_{1}$$, $$R_{2}$$, and $$R_{3}$$ are in a delta configuration, and $$R_{4}$$, $$R_{5}$$ and $$R_{3}$$ are in another delta configuration. To determine the equivalent resistance, one of the easiest way is to convert the delta configuration into a wye configuration to make the calculation easy. 

<p align="center"><img width="550" alt="Captura de pantalla 2025-01-24 a las 19 49 29" src="https://github.com/user-attachments/assets/b8b8bee9-ed3a-41a9-8d73-4125cbe77d4e" /></p>
<p align="center"> <em>Figure 2: A delta connected resistive circuit </em></p>

Figure 3, illustrates the delta configuration and the wye configuration of resistances. In the delta configuration, the resistances are connected in such a way that it looks like the delta symbol (&Delta;). Conversely, in the wye configuration, the resistances create an appearance of "_Y_". This configuration is termed star configuration as well. 

<p align="center"><img width="914" alt="Captura de pantalla 2025-01-24 a las 19 52 37" src="https://github.com/user-attachments/assets/e666da9f-d684-4ad0-b40f-c6085384bc41" /></p>
<p align="center"> <em>Figure 3: Delta and wye configuration in electrical circuits </em></p>

**Delta to Wye Conversion**
In Figure 3, $$R_{d1}$$, $$R_{d2}$$, and $$R_{d3}$$ are the resistances that are connected in a delta configuration. This delta configuration can be transformed into an equivalent wye configuration, where the new resistances will be $$R_{y1}$$, $$R_{y2}$$, and $$R_{y3}$$. Both of the configurations have three common nodes A, B, and C. The formulas for covering each of the delta resistances to its corresponding wye resistances are enlisted as:

$$R_{y1} = \frac{(R_{d1} · R_{d2})}{(R_{d1} + R_{d2} + R_{d3)}}$$

$$R_{y2} = \frac{(R_{d1} · R_{d3})}{(R_{d1} + R_{d2} + R_{d3)}}$$

$$R_{y3} = \frac{(R_{d2} · R_{d3})}{(R_{d1} + R_{d2} + R_{d3)}}$$

#### Example 3: Delta to Wye Conversion




