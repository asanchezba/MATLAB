## 8.1. Introduction
The electrical circuit analyses can be divided into DC (Direct Current) and AC (Alternating Current) circuits. Some of the important theorems and methods to solving individual circuit problems are explained in this chapter, along with two electrical components - an operational amplifier and a transistor.

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

### 7.2.3. Delta-Wye Conversion
In some cases, the resistance of a circuit may not be connected in series or parallel. That's when delta-wye comes in handy. Consider the following circuit in Figure 2, where $$R_{1}$$, $$R_{2}$$, and $$R_{3}$$ are in a delta configuration, and $$R_{4}$$, $$R_{5}$$ and $$R_{3}$$ are in another delta configuration. To determine the equivalent resistance, one of the easiest ways is to convert the delta configuration into a wye configuration to simplify the calculation. 

<p align="center"><img width="550" alt="Captura de pantalla 2025-01-24 a las 19 49 29" src="https://github.com/user-attachments/assets/b8b8bee9-ed3a-41a9-8d73-4125cbe77d4e" /></p>
<p align="center"> <em>Figure 2: A delta connected resistive circuit </em></p>

Figure 3, illustrates the delta configuration and the wye configuration of resistances. In the delta configuration, the resistances are connected in such a way that it looks like the delta symbol (&Delta;). Conversely, in the wye configuration, the resistances create an appearance of "_Y_". This configuration is termed star configuration as well. 

<p align="center"><img width="914" alt="Captura de pantalla 2025-01-24 a las 19 52 37" src="https://github.com/user-attachments/assets/e666da9f-d684-4ad0-b40f-c6085384bc41" /></p>
<p align="center"> <em>Figure 3: Delta and wye configuration in electrical circuits </em></p>

**Delta to Wye Conversion**
In Figure 3, $$R_{d1}$$, $$R_{d2}$$, and $$R_{d3}$$ are the resistances that are connected in a delta configuration. This delta configuration can be transformed into an equivalent wye configuration, where the new resistances will be $$R_{y1}$$, $$R_{y2}$$, and $$R_{y3}$$. Both of the configurations have three common nodes A, B, and C. The formulas for covering each of the delta resistances to its corresponding wye resistances are enlisted as:

$$R_{y1} = \frac{(R_{d1} · R_{d2})}{(R_{d1} + R_{d2} + R_{d3})}$$

$$R_{y2} = \frac{(R_{d1} · R_{d3})}{(R_{d1} + R_{d2} + R_{d3})}$$

$$R_{y3} = \frac{(R_{d2} · R_{d3})}{(R_{d1} + R_{d2} + R_{d3})}$$

#### Example 3: Delta to Wye Conversion
Consider a delta-configured circuit as shown in Figure 3, having the resistances $$R_{d1} = 10 ohms, R_{d2} = 5 ohms, R_{d3} = 20 ohms$$. Determine the equivalent wye resistances $$R_{y1}, R_{y2}, R_{y3}$$.

```matlab
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
```

**Wye to Delta Conversion**
To convert a wye configured resistances $$R_{y1}, R_{y2}$$ and $$R_{y3}$$ to a delta configured equivalent resistances $$R_{d1}, R_{d2}$$ and $$R_{d3}$$; the following equations can be used:

$$R_{d1} = \frac{(R_{y1}·R_{y2})+(R_{y2}·R_{y3})+(R_{y3}·R_{y1})}{R_{y3}}$$
$$R_{d2} = \frac{(R_{y1}·R_{y2})+(R_{y2}·R_{y3})+(R_{y3}·R_{y1})}{R_{y2}}$$
$$R_{d3} = \frac{(R_{y1}·R_{y2})+(R_{y2}·R_{y3})+(R_{y3}·R_{y1})}{R_{y1}}$$

#### Example 4: Wye to Delta Conversion
Consider a delta-configured circuit as shown in Figure 3, having the resistances $$R_{y1} = 10 ohms, R_{y2} = 5 ohms, R_{y3} = 20 ohms$$. Determine the equivalent wye resistances $$R_{d1}, R_{d2}, R_{d3}$$.

```matlab
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
```

#### Example 5: Equivalent Resistance with Delta-Wye Conversion
Consider Figure 2 to determine its equivalent resistance by using the delta-wye conversion method. The values of the resistance are $$R_{1} = 2 ohms, R_{2} = 4 ohms, R_{3} = 6 ohms, R_{4} = 3 ohms, R_{5} = 2 ohms$$. 

```matlab
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
```

### 7.2.4. Kirchhoff's Laws
Gustav Rober Kirchhoff proposed two fundamental laws of electrical circuits: Kirchhoff's Current Law (KCL) and Kirchhoff's Voltage Law (KVL). 

**Kirchhoff's Current Law (KCL):** The sum of all the currents entering a specific node is always zero. In other words, the summation of all the currents entering a node equals the summation of all the currents drawing out from that node. 

**Kirchhoff's Voltage Law (KVL):** The summation of all the voltages in a closed loop is always zero. 

Consider the circuit in Figure 4, where there are two loops, whose currents are considered as $$I_{L1}$$ and $$I_{L2}$$. The resistance of the circuit are $$R_{1} = 2 &Omega;$$, $$R_{2} = 4 &Omega;$$ and $$R_{3} = 4 &Omega;$$. The voltage source, $$E = 10 V$$. At node B, the current $$I_{1}$$ is entering, which gets divided in two: $$I_{2}$$ and $$I_{3}$$. The objective is to determine the current $$I_{1}$$, $$I_{2}$$, and $$I_{3}$$, and the voltage across the resistance $$R_{3}$$, which is termed as $$V_{R3}$$.

In the first ABCD loop, we can apply KVL, and the equation is as follows:

$$E-V_{R1}-V_{R2} = 0$$

or,

$$E = I_{L1}·R_{1} + (I_{L1}·R_{2}-I_{L2}·R_{2}) = 2·I_{L1}-4·I_{L2} = 6·I_{L1}-4·I_{L2}$$

Hence,

$$6·I_{L1}-4·I_{L2} = 10  \quad (1)$$  

Here, $$V_{R1}$$ and $$V_{R2}$$ are the voltages across resistance $$R_{1}$$ and $$R_{2}$$, respectively.

$$V_{R2} + V_{R3} = 0$$

or,

$$(I_{L2}·R_{2}-I_{L1}·R_{3} = 0$$

Hence,

$$-4·I_{L1} + 8·I_{L2} = 0 \quad (2)$$

By solving (1) and (2), the determined values of $$I_{L1}$$ and $$I_{L2}$$ are $$I_{L1} = 2.5 A$$ and $$I_{L2} = 1.25 A$$. From the figure, we can write the following equation:

$$I_{1} = I_{L1} = 2.5 A$$

$$I_{2} = I_{L2} = 1.25 A$$

At node B, applying KCL, we can write the following equation:

$$I_{1} = I_{2} + I_{3}$$

Hence,

$$I_{3} = I_{1} - I_{2} = 1.25 A$$

The voltage across the resistance $$R_{3}$$ can be determined by applying Ohm's law:

$$V_{R3} = I_{2}·R_{3} = 1.25·4 = 5 V$$

<p align="center"><img width="870" alt="Captura de pantalla 2025-01-30 a las 19 58 50" src="https://github.com/user-attachments/assets/7900ec6a-2958-40da-857e-62228ad0f75e" /></p>
<p align="center"> <em>Figure 4: A resistive electrical circuit with two loops </em></p>




