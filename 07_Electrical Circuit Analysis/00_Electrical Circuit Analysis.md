## 7.1. Introduction
The electrical circuit analyses can be divided into DC (Direct Current) and AC (Alternating Current) circuits. Some of the important theorems and methods to solving individual circuit problems are explained in this chapter, along with two electrical components - an operational amplifier and a transistor.

## 7.2. DC Circuit Analysis
### 7.2.1. Ohm's Law
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



### 7.2.2. Equivalent Resistance
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
In some cases, a circuit's resistance may not be connected in series or parallel. That's when delta-wye comes in handy. Consider the following circuit in Figure 2, where $ $ R_$$, $ $ R_$$, and $ $ R_$$ are in a delta configuration, and $ $ R_$$, $ $ R_$$, and $ $ R_$$ are in another delta configuration. To determine the equivalent resistance, one of the easiest ways is to convert the delta configuration into a wye configuration to simplify the calculation. 

<p align="center"><img width="550" alt="Captura de pantalla 2025-01-24 a las 19 49 29" src="https://github.com/user-attachments/assets/b8b8bee9-ed3a-41a9-8d73-4125cbe77d4e" /></p>
<p align="center"> <em>Figure 2: A delta connected resistive circuit </em></p>

Figure 3, illustrates the delta configuration and the wye configuration of resistances. In the delta configuration, the resistances are connected so that it looks like the delta symbol (&Delta;). Conversely, in the wye configuration, the resistances create an appearance of "_Y_". This configuration is termed star configuration as well. 

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

#### Example 6: Circuit Problem
Using loop analysis, solve the circuit shown in Figure 4, considering $$R_{1} = 2 &Omega;, R_{2} = 4 &Omega;, R_{3} = 4 &Omega;$$, and $$E = 10 V$$, for determining:

(a) The loop currents in ABCD and BEFC

(b) The currents $$I_{1}, I_{2}$$ and $$I_{3}$$

(c) The voltages across resistances $$R_{1}, R_{2}$$ and $$R_{3}$$

```matlab
clc; clear all

% Circuit problem
% Determine the loop current IL1 and IL2
% Determine current I1, I2 and I3
% Determine voltages across resistance R3: VR3
% Determine voltages across resistance R2: VR2
% Determine voltages across resistance R1: VR1

R1 = 2; R2 = 4; R3 = 4;
syms IL1 IL2
eqn1 = 6*IL1-4*IL2 == 10;
eqn2 = -4*IL1+8*IL2 == 0;
[IL1,IL2] = solve(eqn1,eqn2);
fprintf('The ABCD loop current, IL1: %.3f A\n',IL1);
fprintf('The BEFC loop current, IL2: %.3f A\n',IL2);

I1 = IL1;
I2 = IL2;
I3 = I1-I2;

fprintf('The currents in the circuit:\n');
fprintf('I1= %.3f A I2= %.3f A I3= %.3f A\n',I1,I2,I3);

VR1 = I1*R1;
VR2 = I2*R2;
VR3 = I3*R3;

fprintf('The voltage across R1, VR1= %.3f V\n',VR1);
fprintf('The voltage across R2, VR2= %.3f V\n',VR2);
fprintf('The voltage across R3, VR1= %.3f V\n',VR3);
```

### 7.2.5. Voltage Divider and Current Divider Laws
**Voltage Divider Rule:** In a series circuit, the voltages are divided across all the series-connected resistances. Consider the circuit in Figure 5, where three resistances $$R_{1}, R_{2}$$, and $$R_{3}$$ are connected in series. The voltages across each resistance can be determined using the following formulas:

$$V_{R1} = \frac{R_{1}}{R_{1}+R_{2}+R_{3}} · V$$

$$V_{R2} = \frac{R_{2}}{R_{1}+R_{2}+R_{3}} · V$$

$$V_{R3} = \frac{R_{3}}{R_{1}+R_{2}+R_{3}} · V$$

Where, $$V$$ is the summation of $$V_{R1}, V_{R2}$$, and $$V_{R3}$$.

<p align="center"><img width="536" alt="Captura de pantalla 2025-01-31 a las 13 18 56" src="https://github.com/user-attachments/assets/a723ece0-117a-40d7-92be-f38f5a926bef" /></p>
<p align="center"> <em>Figure 5: An electrical circuit with a voltage source and series resistance </em></p>

#### Example 7: Voltage Divider
Consider the circuit in Figure 5, where $$R_{1} = 2 &Omega;, R_{2} = 4 &Omega;, R_{3} = 8 &Omega;$$, and $$E = 24 V$$. Determine the voltage $$V_{R2}$$ and $$V_{R3}$$.

```matlab
clc; clear all

% Voltage Divider
% Determine the voltage across the resistances R2 and R3

R1=2; R2=4; R3=8; E=24;
VR2 = (R2/(R1+R2+R3))*E;
VR3 = (R3/(R1+R2+R3))*E;
fprintf('Voltage across the resistance R2: %.3f V\n',VR2);
fprintf('Voltage across the resistance R3: %.3f V\n',VR3);
```

**Current Divider Rule:** In a parallel circuit, the current is divided among all the parallel resistive paths. Consider the circuit in Figure 6, where two resistances $$R_{1}$$ and $$R_{2}$$ are connected in parallel. The current through each of these resistances can be determined using the following formulas:

$$I_{1} = \frac{R_{1}}{R_{1}+R_{2}}·I$$

$$I_{2} = \frac{R_{2}}{R_{1}+R_{2}}·I$$

Where, $$I$$ is the summation of $$I_{1}$$ and $$I_{2}$$.

<p align="center"><img width="538" alt="Captura de pantalla 2025-01-31 a las 19 25 30" src="https://github.com/user-attachments/assets/cbaa33a9-3736-495b-94ae-7e0417d352c7" /></p>
<p align="center"> <em>Figure 6: An electrical circuit with a current source and parallel resistance </em></p>

#### Example 8: Current Divider
Consider the circuit in Figure 6, where $$R_{1} = 2 &Omega;, R_{2} = 4 &Omega;$$ and $$I = 16 A$$. Determine the currents $$I_{1}$$ and $$I_{2}$$.

```matlab
clc; clear all

% Current Divider
% Determine the current through the resistances R1 and R2

R1=2; R2=4; I=16;
I1 = (R2/(R1+R2))*I;
I2 = (R1/(R1+R2))*I;
fprintf('Current through the resistance R1, I1: %.3f A\n',I1);
fprintf('Current through the resistance R2, I2: %.3f A\n',I2);
```

### 7.2.6. Thevenin's Theorem
Thevenin¡s theorem states that any linear circuit can be represented with an equivalent series circuit, incorporating an open-circuit voltage in the terminal, $$V_{th}$$, and an input equivalent resistance, which is determined considering all the voltage sources replaced by a short circuit, and the current sources replaced by an open circuit. 

Figure 7a is the original circuit. For determining its Thevenin's circuit, Thevenin's voltage $$V_{th}$$ and Thevenin's resistance $$R_{th}$$ need to be determined. In Figure 7b, by applying the voltage divider rule, the value of $$V_{th}$$ can be determined as follows:

$$V_{th} = \frac{R_{2}}{R_{1}+R_{2}}·V$$

The equivalent resistance $$R_{th}$$ can be determined from Figure 7c, where a short circuit replaces the voltage sources. If there was a current source, it would be replaced by an open circuit. From the figure, Thevenin's equivalent resistance can be calculated as follows:

$$R_{th} = (R_{1} || R_{2}) + R_{3} = \frac{R_{1}·R_{2}}{R_{1}+R_{2}} + R_{3}$$


<p align="center"><img width="713" alt="Captura de pantalla 2025-01-31 a las 19 36 13" src="https://github.com/user-attachments/assets/a5c96056-4c06-4ee2-96a7-70851e4367fc" /></p>
<p align="center"> <em>Figure 7: Application of Thevenin's theorem to simplify an electrical circuit </em></p>

#### Example 9: Thevenin's Theorem
Consider the circuit shown in Figure 7a, where the parameters are $$R_{1} = 4&Omega;, R_{2} = 2 &Omega;, R_{3} = 3 &Omega;, R_{L} = 5 &Omega;$$, and $$V = 10 V$$. Using Thevenin's theorem, find the following parameters:

(a) Thevenin's voltage, $$V_{th}$$

(b) Thevenin's equivalent resistance, $$R_{th}$$

(c) The current flowing through the load resistance, $$R_{L}$$

```matlab
clc; clear all

% Thevenin's theorem
% Determine Thevenin's voltage, vth
% Determine Thevenin's equivalent resistance, rth
% Determine Load current, IRL

R1=4; R2=2; R3=3; RL=5; V=10;
Vth = (R2/(R1+R2))*V;
Rth = ((R1*R2)/(R1+R2))+R3;
IRL = Vth/(Rth+RL);
fprintf('Thevenin voltage: %.3f V\n',Vth);
fprintf('Thevenin equivalent resistance: %.3f ohms\n',Rth);
fprintf('Load current: %.3f A\n',IRL);
```

### 7.2.7. Maximum Power Transfer Theorem
The maximum power can be achieved from a circuit if its load resistance matches with Thevenin's equivalent resistance. 

Consider the following Thevenin's equivalent circuit (Figure 8), where the ñpad resistance is $$R_{L}$$ and the Thevenin's voltage and equivalent resistance are $$V_{th}$$ and $$R_{th}$$. According to the theorem, maximum power will be achieved when $$R_{L} = R_{th}$$; and the maximum power will be calculated with the following equation:

$$P_{max} = I^2·R_{L} = (\frac{V_{th}}{R_{th}+R_{L}})^2·R_{L}$$

<p align="center"><img width="541" alt="Captura de pantalla 2025-01-31 a las 20 01 54" src="https://github.com/user-attachments/assets/fef373d0-ff59-4e29-ab1b-4ecf1df7afb5" /></p>
<p align="center"> <em>Figure 8: Thevenin's equivalent circuit </em></p>

#### Example 10: Maximum Power Transfer Theorem
Consider the circuit shown in Figure 8, where the parameters are $$R_{th} = 5 &Omega;$$ and $$V_{th} = 10 V$$. Vary the load resistance starting from 1 to 12 ohms, and determine the output power for all scenarios to prove the maximum power transfer theorem.

```matlab
clc; clear all

% Maximum power transfer theorem
Rth=5; Vth=10;
RL = 1:1:26;
for i=1:1:26
    I(i) = Vth/(Rth+RL(i));
    Power(i) = I(i)^2*RL(i);
end

plot(RL,Power,'o-b','LineWidth',1.2);
xlabel('Load resistance, R_L (Ohms)');
ylabel('Output power, P (W)');
title('Maximum power transfer theorem');
grid on;
% Maximum power, when RL=Rth
RL=5;
P_max = (Vth/(Rth+RL))^2*RL;
fprintf('Maximum output power = %.3f\n',P_max);
```


![untitled](https://github.com/user-attachments/assets/546965d1-de60-4908-9af3-bfc868e09b88)
<p align="center"> <em>Figure 9: Graphical output - Maximum power transfer theorem </em></p>

## 7.3. AC Circuit Analysis
An AC circuit has sinusoid inputs as voltage or current sources. A sinusoid can be either a sine or a cosine signal. The general representation of an AC voltage and current source can be defined as follows:

$$v(t) = V_{M}·sin(&omega;t)$$

$$i(t) = I_{M}·sin(&omega;t)$$

Here, $$V_{M}$$ and $$I_{M}$$ are the magnitude of voltage and current signal, respectively. Both sources are a function of time; therefore, after a certain time, the voltage and current may become both positive and negative. $$&omega;$$ indicates the angular frequency in radian.

### 7.3.1. Some Terminologies
**Peak Value:** The maximum value of a sinusoid from the zero level is regarded as the peak value. $$V_{p}$$ represents the peak voltage, the maximum positive voltage value.

**RMS Value:** Implies the root mean square value of the amplitude of a sinusoid signal. It also can be regarded as the effective value of an AC circuit. The RMS value of voltage plays an important role in calculating different terms of an AC circuit. It can be calculated using the following formula:

$$V_{RMS} = \frac{1}{\sqrt{2}}·V_{p}$$

**Average Value:** Indicates the area under the sinusoid signal. It can also be calculated from its peak value using the following formula:

$$V_{avg} = \frac{2}{&pi;}·V_{p}$$

**Instantaneous Value:** Represents the exact value of a sinusoid at a specific time. As AC voltage is a function of time, by providing a specific time, AC voltage at that time can be determined.

$$V_{inst}(t) = V_{p}·sin(2&pi;ft)$$

Here, $$t$$ is the time at which the instantaneous voltage can be calculated. $$f$$ indicates the frequency of the input voltage.

#### Example 11: AC Circuit
The input voltage of an AC circuit is $$v(t) = 2·sin(2&pi;ft)$$, where $$f = 60 Hz$$. 

(a) Plot the input voltage for $$t = 0:0.1$$

(b) Find the values of peak voltage, peak-to-peak voltage, RMS voltage, and average voltage

(c) Find the instantaneous voltage at $$t = 0.02$$.

```matlab
clc; clear all

% AC Circuit
% v(t) = 10 sin(2*pi*f*t)
% Determine: Peak voltage, Vp

f=60; 
t=0:0.0001:0.1;
v = 2*sin(2*pi*f*t);
plot(t,v,'LineWidth',1.5);
xlabel('Time (sec)');
ylabel('Voltage (vol)');
ylim([-2.5 2.5]);
grid on;

Vp = max(abs(v));
fprintf('Peak voltage: %.3f\n',Vp);

% Determine: Peak to peak voltage, Vpp
Vpp = 2*Vp;
fprintf('Peak to peak voltage: %.3f\n',Vpp);

% Determine: RMS voltage, V_rms
V_rms = (1/sqrt(2))*Vp;
fprintf('RMS voltage: %.3f\n',V_rms);

% Determine: Average voltage, V_avg
V_avg = (2/pi)*Vp;
fprintf('Average voltage: %.3f\n',V_avg);

% Determine: Instantaneous voltage at T = 0.02 sec, v_inst
T = 0.02;
V_inst = 2*sin(2*pi*f*T);
fprintf('Instantaneous voltage at T=0.02 sec: %.3f\n',V_inst);
```

![untitled](https://github.com/user-attachments/assets/d1ec321d-72bc-457f-835f-2b0103e8f38f)
<p align="center"> <em>Figure 10: Graphical output - Determination of AC circuit voltage parameters </em></p>

### 7.3.2. Impedance
Impedance signifies the total impediment of the flow of charge in an AC circuit. The impedance can be divided into two parts: resistance and reactance. The resistance is a zero-frequency component; whereas the reactance depends on frequency. The general expression for overall impedance is as follows:

$$Z = R + jX$$

Here the real part is the resistance, and the imaginary part is the reactance. Again, the reactance can be categorised into two parts: inductive reactance ($$X_{L}$$), and capacitive reactance ($$X_{C}$$). With the inclusion of both of these reactances with resistance in series, the formula of impedance can be written as follows:

$$Z = R + j(X_{L} - X_{C}) = R + j(&omega;L - \frac{1}{&omega;C})$$

Therefore,

$$|Z|&ang; &theta; = \sqrt{R^2 + (&omega;L - \frac{1}{&omega;C})^2} &ang; \frac{(&omega;L - \frac{1}{&omega;C})}{R}$$

Here, $$L$$ is the inductance, $$C$$ is the capacitance, and $$&omega;$$ represents the angular frequency. From the formula, it can also be observed that $$X_{L} = &omega;L$$ and $$X_{C} = \frac{1}{&omega;C}$$. An inductive circuit is called a lagging circuit, as the current through the reactance lags the voltage across it. Conversely, a capacitive circuit has a leading current with respect to voltage. A pure inductive circuit lags the current by $$-90^\circ$$, whereas a purely capacitive circuit leads the current by $$+90^\circ$$. If the circuit has both inductive and capacitive reactance, the nature of the circuit can be determined as follows:

```
if (X_L - X_C) > 0
Inductive reactance;
Power factor lagging;
elseif (X_L - X_C) < 0
Capacitive reactance;
Power factor leading;
else
Resistive
Power factor Unity;
end
```

An impedance triangle can be drawn (Figure 11), which shows the relationship between resistance and reactance more clearly. In an impedance triangle, the horizontal line indicates the resistance, as it is a zero-frequency component. The reactance indicates the perpendicular line, as they shift the voltage or current $$+90^\circ$$ or $$-90^\circ$$. An upward perpendicular line refers to an overall inductive reactance, while a downward perpendicular line depicts an overall capacitive reactance. The hypotenuse of the triangle demonstrates the magnitude of the overall impedance, and the angle between the hypotenuse and the horizontal line refers to the phase angle of impedance, which is usually regarded as $$&theta;$$. The cosine of this angle introduces a crucial term in the AC circuit, which is called power factor. 

<p align="center"><img width="512" alt="Captura de pantalla 2025-02-02 a las 19 39 45" src="https://github.com/user-attachments/assets/9b223b1b-294d-4165-9ec1-bdf8ddfa1346" /></p>
<p align="center"> <em>Figure 11: The impedance triangle </em></p>

#### Example 12: Impedance
Consider a series RLC circuit with $$R = 10$$ ohm, $$L = 0.02$$ H, and $$C = 0.05$$ F. If the frequency is 60 Hz, determine:

(a) Impedance of the circuit

(b) Power factor

```matlab
clc; clear all

% Impedance
% Determine impedance: Z
% Determine power factor: PF

R=10; L=0.02; C=0.05; f=60;
XL = 2*pi*f*L;
XC = 1/(2*pi*f*C);
disp('Impedance:')
Z = R+i*(XL-XC)
Imp_magnitude = abs(Z);
Phase_angle = angle(Z)*(180/pi);
disp('In polar form:');
fprintf('|Z| = %.3f ohms; Phase angle = %.3f degree\n',...
    Imp_magnitude,Phase_angle);
PF = cos(Phase_angle);
fprintf('Power factor = %.3f\n',PF);
```

### 7.3.3. Power Triangle
In an AC circuit, the power can be divided into two components: real power (P) and reactive power (Q). The real power is resistive power, which does not depend on frequency, whereas reactive power is frequency-dependent. The vector summation of these two components is called the apparent power (S). These three components can be represented using the power triangle (Figure 12), where the horizontal line represents the real power, P; the perpendicular line indicates the reactive power, Q; and the hypotenuse is the apparent power, S, which can be represented using the following formula:

$$S = P +jQ$$

Hence,

$$|S| &ang; &theta; = \sqrt{P^2 + Q^2} &ang; \frac{Q}{P}$$

For the inductive circuit, the reactive power will be indicated by an upward perpendicular line, and for the capacitive circuit, the reactive power will be represented by a downward perpendicular line. The angle between the horizontal line and hypotenuse is called the power angle ($$&theta;$$), the cosine of which is also referred to as the power factor. 

<p align="center"><img width="589" alt="Captura de pantalla 2025-02-04 a las 19 28 46" src="https://github.com/user-attachments/assets/7b1d0c04-e0be-46eb-b037-94edc8cbd120" /></p>
<p align="center"> <em>Figure 12: The power triangle </em></p>

$$Q = \sqrt{Q_{L}^2 + Q_{C}^2 }$$

```
if (Q_L - Q_C) > 0
Inductive reactance;
Power factor lagging;
elseif (Q_L - Q_C) < 0
Capacitive reactance;
Power factor leading;
else
Resistive
Power factor Unity;
end
```

#### Example 13: Power Triangle
Consider a series RLC circuit with $$P = 10$$ W and $$Q = 5$$ Var. Determine:

(a) Apparent power, S

(b) Power factor, PF

```matlab
clc; clear all

% Power triangle
% Find: Apparent power, S
% Find: Power factor, PF

%Example 1: Real power, P=10W; Reactive power, Q=5 Var
fprintf('Example 1: Positive reactive power\n');
fprintf('-------------------------------------\n');
P = 10; Q = 5;
disp('Apparent power:')
S = P+i*Q
S_mag = abs(S);
S_angle = angle(S)*(180/pi);
fprintf('Apparent power in polar form:\n');
fprintf('|S| = %.3f VA Power angle = %.3f degree\n',S_mag,S_angle);
PF = cos(S_angle);

if Q>0
    fprintf('Power factor = %.3f; Lagging\n',PF);
elseif Q<0
    fprintf('Power factor = %.3f; Leading\n',PF);
else
    fprintf('Power factor = %.3f; Unity\n',PF);
end

fprintf('\n');

%Example 2: Real power, P=10W; Reactive power, Q=-5 Var
fprintf('Example 2: Negative reactive power\n');
fprintf('-------------------------------------\n');
P = 10; Q = -5;
disp('Apparent power:')
S = P+i*Q
S_mag = abs(S);
S_angle = angle(S)*(180/pi);
fprintf('Apparent power in polar form:\n');
fprintf('|S| = %.3f VA Power angle = %.3f degree\n',S_mag,S_angle);
PF = cos(S_angle);

if Q>0
    fprintf('Power factor = %.3f; Lagging\n',PF);
elseif Q<0
    fprintf('Power factor = %.3f; Leading\n',PF);
else
    fprintf('Power factor = %.3f; Unity\n',PF);
end

fprintf('\n');

%Example 3: Real power, P=10W; Reactive power, Q=0 Var
fprintf('Example 2: Zero reactive power\n');
fprintf('-------------------------------------\n');
P = 10; Q = 0;
disp('Apparent power:')
S = P+i*Q
S_mag = abs(S);
S_angle = angle(S)*(180/pi);
fprintf('Apparent power in polar form:\n');
fprintf('|S| = %.3f VA Power angle = %.3f degree\n',S_mag,S_angle);
PF = cos(S_angle);

if Q>0
    fprintf('Power factor = %.3f; Lagging\n',PF);
elseif Q<0
    fprintf('Power factor = %.3f; Leading\n',PF);
else
    fprintf('Power factor = %.3f; Unity\n',PF);
end

fprintf('\n');
```

### 7.3.4. Three-Phase AC Circuit Analysis
In a three-phase circuit, the configuration can either be in wye or delta, based on which the properties change. To understand the relationship among different parameters in both wye and delta connection, we first need to categorise the circuit into two parts based on the nature of the load: balanced and unbalanced. In an unbalanced load, all the loads are not equally distributed among three phases, whereas in a balanced load, all the loads are distributed evenly among the phases. In a balanced system, all the voltages, or currents, in three phases are in $$120^\circ$$ phase difference from each other. Based on the nature of the order of the sequence of phase voltage, two-phase sequences are available - "abc" sequence and "acb" sequence (Figure 13). The phase sequence imples the order of sequence based on which the individual phase voltage or current reaches its peak values. 

<p align="center"><img width="912" alt="Captura de pantalla 2025-02-07 a las 19 31 55" src="https://github.com/user-attachments/assets/ec0eee7d-76ab-46a0-afb9-6a27194200ab" /></p>
<p align="center"> <em>Figure 13: abc and acb phase sequence in three-phase systems </em></p>

### 7.3.4.1. Delta-Connected Unbalanced Load
A delta-connected unbalanced load is shown in Figure 14, where the impedances are of different values in each phase to make the system unbalanced. 

<p align="center"><img width="685" alt="Captura de pantalla 2025-02-07 a las 19 34 17" src="https://github.com/user-attachments/assets/4af6b85b-678a-46bb-8fef-7c1d3bc7e9f1" /></p>
<p align="center"> <em>Figure 14: A delta connected unbalanced system </em></p>

The relevant parameters for a delta-connected unbalanced load system are listed in Table 1. For a delta-connected unbalanced system, the parameters can be related with each other by the formulas as mentioned in Table 2. 

<p align="center"> <em>Table 1. Parameters in a delta-connected unbalanced load system </em></p>
<p align="center"><img width="946" alt="Captura de pantalla 2025-02-07 a las 19 38 13" src="https://github.com/user-attachments/assets/b1c11cb0-12da-4b3b-9084-c4d19824262b" /></p>

<p align="center"> <em>Table 2. Relationship between the parameters in a delta-connected unbalanced system </em></p>
<p align="center"><img width="648" alt="Captura de pantalla 2025-02-07 a las 19 39 21" src="https://github.com/user-attachments/assets/6b67d624-e10a-461c-bb36-0728e93025d0" /></p>

#### Example 14: Delta-Connected Unbalanced Load
Consider a system shown in Figure 14 with the following parameters:

$$V_{AB} = 120 &ang;0^\circ V$$
$$V_{BC} = 110 &ang;120^\circ V$$
$$V_{CA} = 150 &ang;240^\circ V$$
$$Z_{1} = 10 &ang;10^\circ$$
$$Z_{2} = 15 &ang;-25^\circ$$
$$Z_{3} = 20 &ang;-10^\circ$$

Determine:

(a) Phase currents $$I_{AB}, I_{BC}$$ and $$I_{CA}$$

(b) Line currents $$I_{A}, I_{B}$$ and $$I_{C}$$

```matlab
clc; clear all

% Delta connected unbalanced load
% Find the phase currents I_AB, I_BC, I_CA
% Find the line currents I_A, I_B, I_C

% Line to Line voltages
V_AB = 120*cos(0)+i*120*sin(0);
V_BC = 110*cos(120*(pi/180))+i*110*sin(120*(pi/180));
V_CA = 150*cos(240*(pi/180))+i*150*sin(240*(pi/180));

% Impedances
Z1 = 10*cos(10*(pi/180))+i*10*sin(10*(pi/180));
Z2 = 15*cos(-25*(pi/180))+i*15*sin(-25*(pi/180));
Z3 = 20*cos(-10*(pi/180))+i*20*sin(-10*(pi/180));

% Phase currents
I_AB = V_AB/Z1;
I_BC = V_BC/Z2;
I_CA = V_CA/Z3;
I_AB_mag = abs(I_AB);
I_AB_ang = angle(I_AB)*(180/pi);
I_BC_mag = abs(I_BC);
I_BC_ang = angle(I_BC)*(180/pi);
I_CA_mag = abs(I_CA);
I_CA_ang = angle(I_CA)*(180/pi);
fprintf('Phase currents:\n');
fprintf('I_AB = %.3f A        Angle= %.3f degree\n',I_AB_mag,I_AB_ang);
fprintf('I_BC = %.3f A        Angle= %.3f degree\n',I_BC_mag,I_BC_ang);
fprintf('I_CA = %.3f A        Angle= %.3f degree\n',I_CA_mag,I_CA_ang);

% Line currents
I_A = I_AB-I_CA;
I_B = I_BC-I_AB;
I_C = I_CA-I_BC;
I_A_mag = abs(I_A);
I_A_ang = angle(I_A)*180/pi;
I_B_mag = abs(I_B);
I_B_ang = angle(I_B)*180/pi;
I_C_mag = abs(I_C);
I_C_ang = angle(I_C)*180/pi;
fprintf('Line currents:\n');
fprintf('I_A = %.3f A        Angle= %.3f degree\n',I_A_mag,I_A_ang);
fprintf('I_B = %.3f A        Angle= %.3f degree\n',I_B_mag,I_B_ang);
fprintf('I_C = %.3f A        Angle= %.3f degree\n',I_C_mag,I_C_ang);
```

### 7.3.4.2. Delta-Connected Balanced Load
A delta-connected balanced load is shown in Figure 15, where the impedances are equally distributed in each phase to make the system balanced. In a balanced delta system, the magnitudes of the input line-to-line voltage and phase voltages are equal. The relevant parameters of a delta-connected balanced system are listed in Table 3. The relationship between the parameters for a delta-connected balanced load system can be summarised as shown in Table 4.

<p align="center"><img width="683" alt="Captura de pantalla 2025-02-07 a las 20 06 11" src="https://github.com/user-attachments/assets/14d85795-f1c4-462c-b84a-43d6252a5da6" /></p>
<p align="center"> <em>Figure 15: A delta connected balanced system </em></p>

<p align="center"> <em>Table 3. Parameters in a delta-connected balanced load system </em></p>
<p align="center"><img width="802" alt="Captura de pantalla 2025-02-07 a las 20 08 55" src="https://github.com/user-attachments/assets/0c015f82-6284-401c-ab0a-aebf7959acc1" /></p>

<p align="center"> <em>Table 4. Relationship between the parameters in a delta-connected balanced load system </em></p>
<p align="center"><img width="1280" alt="Captura de pantalla 2025-02-07 a las 20 08 23" src="https://github.com/user-attachments/assets/8cbe5c3a-dd31-42c0-a088-cbb02734584b" /></p>

#### Example 15: Delta-Connected Balanced Load
Consider a system shown in Figure 15 with the following parameters:

$$V_{AB} = 120 &ang;0^\circ V$$
$$V_{BC} = 110 &ang;120^\circ V$$
$$V_{CA} = 150 &ang;240^\circ V$$
$$Z = 10 &ang;10^\circ$$

Determine:

(a) Phase currents $$I_{AB}, I_{BC}$$ and $$I_{CA}$$

(b) Line currents $$I_{A}, I_{B}$$ and $$I_{C}$$

```matlab
clc; clear all

% Delta connected balanced load
% Find the phase currents I_AB, I_BC, I_CA
% Find the line currents I_A, I_B, I_C

% Line to Line voltages
V_AB = 120*cos(0)+i*120*sin(0);
V_BC = 110*cos(120*(pi/180))+i*110*sin(120*(pi/180));
V_CA = 150*cos(240*(pi/180))+i*150*sin(240*(pi/180));

% Impedances
Z = 10*cos(10*(pi/180))+i*10*sin(10*(pi/180));

% Phase currents
I_AB = V_AB/Z;
I_BC = V_BC/Z;
I_CA = V_CA/Z;
Ip = abs(I_AB);
I_AB_ang = angle(I_AB)*(180/pi);
I_BC_ang = angle(I_BC)*(180/pi);
I_CA_ang = angle(I_CA)*(180/pi);
fprintf('Phase currents:\n');
fprintf('I_AB = %.3f A        Angle= %.3f degree\n',Ip,I_AB_ang);
fprintf('I_BC = %.3f A        Angle= %.3f degree\n',Ip,I_BC_ang);
fprintf('I_CA = %.3f A        Angle= %.3f degree\n',Ip,I_CA_ang);

% Line currents
I_A = I_AB-I_CA;
I_B = I_BC-I_AB;
I_C = I_CA-I_BC;
IL = abs(I_A);
I_A_ang = angle(I_A)*180/pi;
I_B_ang = angle(I_B)*180/pi;
I_C_ang = angle(I_C)*180/pi;
fprintf('Line currents:\n');
fprintf('I_A = %.3f A        Angle= %.3f degree\n',IL,I_A_ang);
fprintf('I_B = %.3f A        Angle= %.3f degree\n',IL,I_B_ang);
fprintf('I_C = %.3f A        Angle= %.3f degree\n',IL,I_C_ang);
```

### 7.3.4.3. Wye-Connected Four-Wire Unbalanced Load
A wye-connected four-wire unbalanced load is shown in Figure 16, where the impedances are  different in each phase to make the system unbalanced. In addition, the common point is connected to a neutral, which explains the reason for naming it a four-wire system.

The relevant parameters of a wyre-connected four-wire unbalanced system are enlisted in Table 5. The relationship among the parameters for a wye-connected four-wire unbalanced load system can be summarised as shown in Table 6.

<p align="center"><img width="613" alt="Captura de pantalla 2025-02-14 a las 19 34 09" src="https://github.com/user-attachments/assets/2d71c581-5515-4404-9d02-d3e711c76562" /></p>
<p align="center"> <em>Figure 16: A wyre connected four wire unbalanced system </em></p>

<p align="center"> <em>Table 5. Parameters in a wye-connected four-wire unbalanced load system </em></p>
<p align="center"><img width="858" alt="Captura de pantalla 2025-02-14 a las 19 36 25" src="https://github.com/user-attachments/assets/27c61c32-3fdb-4ced-954c-4a56ad089ad5" /></p>

<p align="center"> <em>Table 6. Relationship between the parameters in a wye-connected four-wire unbalanced load system </em></p>
<p align="center"><img width="578" alt="Captura de pantalla 2025-02-14 a las 19 37 32" src="https://github.com/user-attachments/assets/0c2cc98e-1f73-412e-be9b-9dd3833e7c16" /></p>

#### Example 16: Wye-Connected Four-Wire Unbalanced Load
Consider a system shown in Figure 16 with the following parameters:

$$V_{AN} = 120 &ang;10^\circ V$$
$$V_{BN} = 110 &ang;150^\circ V$$
$$V_{CN} = 150 &ang;-50^\circ V$$
$$Z_{1} = 10 &ang;10^\circ$$
$$Z_{2} = 15 &ang;-25^\circ$$
$$Z_{3} = 20 &ang;-10^\circ$$

Determine:

(a) Line-to-line voltage $$V_{AB}, V_{BC}$$, and $$V_{CA}$$

(b) Phase currents $$I_{AN}, I_{BN}$$, and $$I_{CN}$$

(c) Line currents $$I_{A}, I_{B}$$, and $$I_{C}$$


```matlab
clc; clear all

% Wye connected four wire unbalanced load
% Find: Line to line voltages V_AB, V_BC, V_CA
% Find: Phase currents I_AN, I_BN, I_CN
% Find: Line currents I_A, I_B, I_C

% Line to line voltages
V_AN = 120*cos(10)+i*120*sin(10);
V_BN = 110*cos(150*(pi/180))+i*110*sin(150*(pi/180));
V_CN = 150*cos(-50*(pi/180))+i*150*sin(-50*(pi/180));

% Impendaces
Z1 = 10*cos(10*(pi/180))+i*10*sin(10*(pi/180));
Z2 = 15*cos(-25*(pi/180))+i*15*sin(-25*(pi/180));
Z3 = 20*cos(-10*(pi/180))+i*20*sin(-10*(pi/180));

% Line to line voltages
V_AB = V_AN-V_BN;
V_BC = V_BN-V_CN;
V_CA = V_CN-V_AN;
V_AB_mag = abs(V_AB);
V_AB_ang = angle(V_AB)*180/pi;
V_BC_mag = abs(V_BC);
V_BC_ang = angle(V_BC)*180/pi;
V_CA_mag = abs(V_CA);
V_CA_ang = angle(V_CA)*180/pi;
fprintf('Line to line voltages:\n');
fprintf('V_AB = %.3f A      Angle = %.3f degree\n',V_AB_mag,V_AB_ang);
fprintf('V_BC = %.3f A      Angle = %.3f degree\n',V_BC_mag,V_BC_ang);
fprintf('V_CA = %.3f A      Angle = %.3f degree\n',V_CA_mag,V_CA_ang);

% Phase currents
I_AN = V_AN/Z1;
I_BN = V_BN/Z2;
I_CN = V_CN/Z3;
I_AN_mag = abs(I_AN);
I_AN_ang = angle(I_AN)*180/pi;
I_BN_mag = abs(I_BN);
I_BN_ang = angle(I_BN)*180/pi;
I_CN_mag = abs(I_CN);
I_CN_ang = angle(I_CN)*180/pi;
fprintf('Phase currents:\n');
fprintf('I_AN = %.3f A      Angle = %.3f degree\n',I_AN_mag,I_AN_ang);
fprintf('I_BN = %.3f A      Angle = %.3f degree\n',I_BN_mag,I_BN_ang);
fprintf('I_CN = %.3f A      Angle = %.3f degree\n',I_CN_mag,I_CN_ang);

% Line currents
fprintf('Line currents:\n');
fprintf('I_A = %.3f A      Angle = %.3f degree\n',I_AN_mag,I_AN_ang);
fprintf('I_B = %.3f A      Angle = %.3f degree\n',I_BN_mag,I_BN_ang);
fprintf('I_C = %.3f A      Angle = %.3f degree\n',I_CN_mag,I_CN_ang);
```

### 7.3.4.4. Wye-Connected Four-Wire Balanced Load
A wye-connected four-wire balanced load is shown in Figure 17, where the impedances are distributed evenly in each phase to make the system balanced. In addition, the common point is connected to a neutral, which explains the reason for naming it a four wire-system. 

The relevant parameters of a wye-connected four-wire balanced load system are listed in Table 7. The relationship among the parameters for a wye-connected four-wire balanced load system can be summarised as shown in Table 8.

<p align="center"><img width="594" alt="Captura de pantalla 2025-02-16 a las 17 39 18" src="https://github.com/user-attachments/assets/70786e7b-6d2c-4ed1-b7d8-03360e4eb9da" /></p>
<p align="center"> <em>Figure 17: A wyre connected four wire balanced system </em></p>

<p align="center"> <em>Table 7. Parameters in a wye-connected four-wire balanced load system </em></p>
<p align="center"><img width="856" alt="Captura de pantalla 2025-02-16 a las 17 40 04" src="https://github.com/user-attachments/assets/d643c038-834d-423d-90b8-08488748613c" /></p>

<p align="center"> <em>Table 8. Relationship between the parameters in a wye-connected four-wire balanced load system </em></p>
<p align="center"><img width="864" alt="Captura de pantalla 2025-02-16 a las 17 40 17" src="https://github.com/user-attachments/assets/64a0a9fa-f21e-422a-958b-506e76b9ad0b" /></p>


#### Example 17: Wye-Connected Four-Wire Balanced Load
Consider a system shown in Figure 17 with the following parameters:

$$V_{AN} = 110 &ang;10^\circ V$$
$$V_{BN} = 110 &ang;150^\circ V$$
$$V_{CN} = 110 &ang;-50^\circ V$$
$$Z = 10 &ang;10^\circ$$


Determine:

(a) Line-to-line voltage $$V_{AB}, V_{BC}$$, and $$V_{CA}$$

(b) Phase currents $$I_{AN}, I_{BN}$$, and $$I_{CN}$$

(c) Line currents $$I_{A}, I_{B}$$, and $$I_{C}$$

```matlab
clc; clear all

% Wye connected four wire balanced load
% Find: Line to line voltages V_AB, V_BC, V_CA
% Find: Phase currents I_AN, I_BN, I_CN
% Find: Line currents I_A, I_B, I_C

% Line to line voltages
V_AN = 110*cos(0)+i*110*sin(0);
V_BN = 110*cos(120*(pi/180))+i*110*sin(120*(pi/180));
V_CN = 110*cos(240*(pi/180))+i*110*sin(240*(pi/180));

% Impendaces
Z = 10*cos(10*(pi/180))+i*10*sin(10*(pi/180));

% Line to line voltages
V_AB = V_AN-V_BN;
V_BC = V_BN-V_CN;
V_CA = V_CN-V_AN;
V_L = abs(V_AB);
V_AB_mag = abs(V_AB);
V_AB_ang = angle(V_AB)*180/pi;
V_BC_mag = abs(V_BC);
V_BC_ang = angle(V_BC)*180/pi;
V_CA_mag = abs(V_CA);
V_CA_ang = angle(V_CA)*180/pi;
fprintf('Line to line voltages:\n');
fprintf('V_AB = %.3f A      Angle = %.3f degree\n',V_L,V_AB_ang);
fprintf('V_BC = %.3f A      Angle = %.3f degree\n',V_L,V_BC_ang);
fprintf('V_CA = %.3f A      Angle = %.3f degree\n',V_L,V_CA_ang);

% Phase currents
I_AN = V_AN/Z;
I_BN = V_BN/Z;
I_CN = V_CN/Z;
I_AN_mag = abs(I_AN);
I_AN_ang = angle(I_AN)*180/pi;
I_BN_mag = abs(I_BN);
I_BN_ang = angle(I_BN)*180/pi;
I_CN_mag = abs(I_CN);
I_CN_ang = angle(I_CN)*180/pi;
fprintf('Phase currents:\n');
fprintf('I_AN = %.3f A      Angle = %.3f degree\n',I_AN_mag,I_AN_ang);
fprintf('I_BN = %.3f A      Angle = %.3f degree\n',I_BN_mag,I_BN_ang);
fprintf('I_CN = %.3f A      Angle = %.3f degree\n',I_CN_mag,I_CN_ang);

% Line currents
fprintf('Line currents:\n');
fprintf('I_A = %.3f A      Angle = %.3f degree\n',I_AN_mag,I_AN_ang);
fprintf('I_B = %.3f A      Angle = %.3f degree\n',I_BN_mag,I_BN_ang);
fprintf('I_C = %.3f A      Angle = %.3f degree\n',I_CN_mag,I_CN_ang);
```

### 7.3.4.5. Wye-Connected Three-Wire Unbalanced Load
A wye-connected three-wire unbalanced load system is shown in Figure 18, where the impedances are different in each phase to make the system unbalanced. The common point is not connected to a neutral; therefore, it will be regarded as a common point, not a neutral point. 

The relevant parameters of a wye-connected three-wire balanced load system are listed in Table 9. The relationship among the parameters for a wye-connected three-wire balanced load system can be summarised as shown in Table 10. 

<p align="center"><img width="710" alt="Captura de pantalla 2025-02-16 a las 17 55 08" src="https://github.com/user-attachments/assets/949e3d48-40f8-4560-a267-8c2ef5cb4393" /></p>
<p align="center"> <em>Figure 18: A wyre connected three wire unbalanced system </em></p>

<p align="center"> <em>Table 9. Parameters in a wye-connected three-wire unbalanced load system </em></p>
<p align="center"><img width="854" alt="Captura de pantalla 2025-02-16 a las 17 55 19" src="https://github.com/user-attachments/assets/2e284fcc-e680-42de-8dcd-f2594d2eef4d" /></p>

<p align="center"> <em>Table 10. Relationship between the parameters in a wye-connected three-wire unbalanced load system </em></p>
<p align="center"><img width="845" alt="Captura de pantalla 2025-02-16 a las 17 55 26" src="https://github.com/user-attachments/assets/b1d680c0-c295-4311-bf18-d1e46a4a22da" /></p>


#### Example 18: Wye-Connected Three-Wire Unbalanced Load
Consider a system shown in Figure 18 with the following parameters:

$$V_{ao} = 120 &ang;10^\circ V$$
$$V_{bo} = 110 &ang;150^\circ V$$
$$V_{co} = 150 &ang;-50^\circ V$$
$$Z_{1} = 10 &ang;10^\circ$$
$$Z_{2} = 15 &ang;-25^\circ$$
$$Z_{3} = 20 &ang;-10^\circ$$

Determine:

(a) Line-to-line voltages $$V_{AB}, V_{BC}$$, and $$V_{CA}$$

(b) Line currents $$I_{A}, I_{B}$$, and $$I_{C}$$

```matlab
clc; clear all

% Wye connected three wire unbalanced load
% Find: line to line voltages V_AB, V_BC, V_CA
% Find: line currents I_A, I_B, I_C

% Line to line voltges
V_ao = 120*cos(10)+i*110*sin(10);
V_bo = 110*cos(150*(pi/180))+i*110*sin(150*(pi/180));
V_co = 150*cos(-50*(pi/180))+i*150*sin(-50*(pi/180));

% Impedances
Z1 = 10*cos(10*(pi/180))+i*10*sin(10*(pi/180));
Z2 = 15*cos(-25*(pi/180))+i*15*sin(-25*(pi/180));
Z3 = 20*cos(-10*(pi/180))+i*20*sin(-10*(pi/180));

% Line to line voltages
V_AB = V_ao-V_bo;
V_BC = V_bo-V_co;
V_CA = V_co-V_ao;
V_AB_mag = abs(V_AB);
V_AB_ang = angle(V_AB)*180/pi;
V_BC_mag = abs(V_BC);
V_BC_ang = angle(V_BC)*180/pi;
V_CA_mag = abs(V_CA);
V_CA_ang = angle(V_CA)*180/pi;
fprintf('Line to line voltages:\n');
fprintf('V_AB = %.3f A      Angle = %3.f degree\n',V_AB_mag,V_AB_ang);
fprintf('V_BC = %.3f A      Angle = %3.f degree\n',V_BC_mag,V_BC_ang);
fprintf('V_CA = %.3f A      Angle = %3.f degree\n',V_CA_mag,V_CA_ang);

% Line currents
I_A = V_ao/Z1;
I_B = V_bo/Z2;
I_C = V_co/Z3;
I_A_mag = abs(I_A);
I_A_ang = angle(I_A)*180/pi;
I_B_mag = abs(I_B);
I_B_ang = angle(I_B)*180/pi;
I_C_mag = abs(I_C);
I_C_ang = angle(I_C)*180/pi;
fprintf('Line currents:\n');
fprintf('I_A = %.3f A      Angle = %3.f degree\n',I_A_mag,I_A_ang);
fprintf('I_B = %.3f A      Angle = %3.f degree\n',I_B_mag,I_B_ang);
fprintf('I_C = %.3f A      Angle = %3.f degree\n',I_C_mag,I_C_ang);
```

### 7.3.4.6. Wye-Connected Three-Wire Balanced Load
A wye-connected three-wire balanced load system is shown in Figure 19, where the impedances are equal in each phase to make the system balanced. In addition, the common point is not connected to a neutral; therefore, it will be regarded as a common point, not a neutral point. 

<p align="center"><img width="774" alt="Captura de pantalla 2025-02-23 a las 15 51 37" src="https://github.com/user-attachments/assets/75d3dba3-14fe-4fc2-a119-7390db141224" /></p>
<p align="center"> <em>Figure 19: A wyre connected three wire balanced system </em></p>

<p align="center"> <em>Table 10. Parameters in a wye-connected three-wire balanced load system </em></p>
<p align="center"><img width="913" alt="Captura de pantalla 2025-02-23 a las 15 52 12" src="https://github.com/user-attachments/assets/24a4ab3c-3aa9-482d-9767-db4b557d42d5" /></p>

<p align="center"> <em>Table 11. Relationship between the parameters in a wye-connected three-wire balanced load system </em></p>
<p align="center"><img width="898" alt="Captura de pantalla 2025-02-23 a las 15 52 44" src="https://github.com/user-attachments/assets/79ee64ef-42c3-4775-8ffb-4625b43f5878" /></p>

#### Example 19: Wye-Connected Three-Wire Balanced Load
Consider a system shown in Figure 19 with the following parameters:

$$V_{ao} = 120 &ang;0^\circ V$$
$$V_{bo} = 110 &ang;120^\circ V$$
$$V_{co} = 150 &ang;240^\circ V$$
$$Z = 10 &ang;10^\circ$$

Determine:

(a) Line-to-line voltages $$V_{AB}, V_{BC}$$, and $$V_{CA}$$

(b) Line currents $$I_{A}, I_{B}$$, and $$I_{C}$$

```matlab
clc; clear all

% Wye connected three wire balanced load
% Find: line to line voltages V_AB, V_BC, V_CA
% Find: line currents I_A, I_B, I_C

% Line to line voltges
V_ao = 120*cos(0)+i*110*sin(0);
V_bo = 120*cos(120*(pi/180))+i*120*sin(120*(pi/180));
V_co = 120*cos(240*(pi/180))+i*120*sin(240*(pi/180));

% Impedances
Z = 10*cos(10*(pi/180))+i*10*sin(10*(pi/180));

% Line to line voltages
V_AB = V_ao-V_bo;
V_BC = V_bo-V_co;
V_CA = V_co-V_ao;
V_AB_mag = abs(V_AB);
V_AB_ang = angle(V_AB)*180/pi;
V_BC_mag = abs(V_BC);
V_BC_ang = angle(V_BC)*180/pi;
V_CA_mag = abs(V_CA);
V_CA_ang = angle(V_CA)*180/pi;
fprintf('Line to line voltages:\n');
fprintf('V_AB = %.3f A      Angle = %3.f degree\n',V_AB_mag,V_AB_ang);
fprintf('V_BC = %.3f A      Angle = %3.f degree\n',V_BC_mag,V_BC_ang);
fprintf('V_CA = %.3f A      Angle = %3.f degree\n',V_CA_mag,V_CA_ang);

% Line currents
I_A = V_ao/Z;
I_B = V_bo/Z;
I_C = V_co/Z;
I_A_mag = abs(I_A);
I_A_ang = angle(I_A)*180/pi;
I_B_mag = abs(I_B);
I_B_ang = angle(I_B)*180/pi;
I_C_mag = abs(I_C);
I_C_ang = angle(I_C)*180/pi;
fprintf('Line currents:\n');
fprintf('I_A = %.3f A      Angle = %3.f degree\n',I_A_mag,I_A_ang);
fprintf('I_B = %.3f A      Angle = %3.f degree\n',I_B_mag,I_B_ang);
fprintf('I_C = %.3f A      Angle = %3.f degree\n',I_C_mag,I_C_ang);
```

## 7.4. Operational Amplifier
An operational amplifier is an active device that can amplify any input signals; perform mathematical operations such as addition, multiplication, differentiation, and integration; and filter. The block diagram of an operational amplifier (Op-amp) is provided in Figure 20. A standard Op-amp has five important ports, where port 1 and port 2 signify the inverting and the non-inverting input signals; and port 5 is for the output signal. In port 3 and port 4, the positive and negative voltage connection is provided. 

<p align="center"><img width="616" alt="Captura de pantalla 2025-02-23 a las 16 00 31" src="https://github.com/user-attachments/assets/a6964348-84a5-4813-9449-3167e9858000" /></p>
<p align="center"> <em>Figure 20: Pin diagram of an operational amplifier </em></p>

### 7.4.1. Inverting Amplifier
In an inverting amplifier, the gain of the amplifier is negative. The gain of an amplifier is the ratio of output to input. A configuration of an inverting amplifier is given in Figure 21, where a positive voltage source is connected with the negative input port of an Op-amp, and the positive input port is grounded.

$$V_{out} = -\frac{R_{2}}{R_{1}}·V_{in}$$

<p align="center"><img width="642" alt="Captura de pantalla 2025-02-24 a las 20 26 34" src="https://github.com/user-attachments/assets/24942a23-d0f3-49c7-9a82-173a4ffe8f3d" /></p>
<p align="center"> <em>Figure 21: Circuit diagram of an inverting amplifier </em></p>

#### Example 20: Inverting Amplifier
Consider an inverting amplifier as shown in Figure 21 with 40 V input and $$R_{1} = 4 &Omega;$$, $$R_{2} = 2 &Omega;$$. Determine the gain and the output voltage. 

```matlab
clc; clear all

% Inverting amplifier
% Find: Output voltage V_out
% Find Gain G

V_in = 40; R1 = 4; R2 = 2;
V_out = -(R2/R1)*V_in;
G = V_out/V_in;
fprintf('Output voltage: %.2f V\n',V_out);
fprintf('Gain: %.2f\n', G);
```

### 7.4.2. Non-inverting Amplifier
In a non-inverting amplifier, the gain of the amplifier is positive. A configuration of a non-inverting amplifier is given in Figure 22, where a positive voltage source is connected with the positive input port of an Op-amp, and the negative input port is grounded.

$$V_{out} = (1+\frac{R_{2}}{R_{1}})·V_{in}$$

<p align="center"><img width="618" alt="Captura de pantalla 2025-02-24 a las 20 36 18" src="https://github.com/user-attachments/assets/e28ac154-f68b-46b3-bb6a-84c21d42b05d" /></p>
<p align="center"> <em>Figure 22: Circuit diagram of an non-inverting amplifier </em></p>

#### Example 21: Non-Inverting Amplifier
Consider an inverting amplifier as shown in Figure 22 with 40 V input and $$R_{1} = 4 &Omega;$$, $$R_{2} = 2 &Omega;$$. Determine the gain and the output voltage. 

```matlab
clc; clear all

% Non-inverting amplifier
% Find: Output voltage V_out
% Find Gain G

V_in = 40; R1 = 4; R2 = 2;
V_out = (1+(R2/R1))*V_in;
G = V_out/V_in;
fprintf('Output voltage: %.2f V\n',V_out);
fprintf('Gain: %.2f\n', G);
```

### 7.4.3. Follower Circuit
In a follower circuit (Figure 23), the gain is always unity. The feedback resistance is short-circuited, and the input impedance is open-circuited. Therefore, the input impedance of a follower circuit is infinity, or very high; and the output impedance is zero, or very small. 

<p align="center"><img width="474" alt="Captura de pantalla 2025-02-28 a las 17 55 55" src="https://github.com/user-attachments/assets/eb5c8508-dd95-4636-8a3e-3a0950981389" /></p>
<p align="center"> <em>Figure 23: Circuit diagram of a follower circuit </em></p>

#### Example 22: Follower Circuit
Consider the circuit in Figure 24, where the output of an inverting amplifier is connected as an input of a follower circuit. Determine the values of $$V_{1}$$ and $$V_{out}$$.

<p align="center"><img width="918" alt="Captura de pantalla 2025-02-28 a las 17 58 02" src="https://github.com/user-attachments/assets/93dc5b1f-7ddc-4a69-a522-9406cf478e94" /></p>
<p align="center"> <em>Figure 24: Follower circuit </em></p>

```matlab
clc; clear all

% Follower circuit
% Find output of the inverting amplifier V1
% Find final output voltage V_out

V_in = 20; R1 =4; R2 = 8;
V1 = -(R2/R1)*V_in;
fprintf('V1: %.2f V\n',V1);
V_out = V1;
fprintf('Final output voltage, V_out: %.2f V\n',V_out);
```

### 7.4.4. Differentiator Circuit
A differentiator circuit is shown in Figure 25. For a given signal input $$V_{in}(t)$$, the output of the Op-amp will be a differentiation of the input with the multiplication of resistance and capacitance value. As it is an inverting amplifier, the output will be inverted. The output of a differentiator circuit can be defined using the following formula:

$$V_{out}(t) = -RC·\frac{dV_{in}}{dt}$$

The current through the resistance $$R$$ and the capacitor $$C$$ can be represented by the following formula:

$$I_{R} = \frac{V_{out}}{R}$$

$$I_{C} = C\frac{dV_{in}}{dt}$$

<p align="center"><img width="513" alt="Captura de pantalla 2025-02-28 a las 18 08 00" src="https://github.com/user-attachments/assets/c8dc6445-c7a3-43e6-b3eb-aa3ea271a9b9" /></p>
<p align="center"> <em>Figure 25: Circuit diagram of a differentiator circuit </em></p>

#### Example 23: Differentiator Circuit
Consider the circuit in Figure 25, where $$R = 5 &Omega;$$ and $$C = 0.5 F$$. If the input signal is $$v(t) = 2 sin(t)$$, determine:

(a) The output signal $$v_{out}(t)$$

(b) The output of the circuit at $$t = 0.1 s$$

(c) $$I_{R}$$ and $$I_{C}$$ at $$t = 0.1 s$$

```matlab
clc; clear all

% Differentiator circuit
% Find output signal v_out(t)
% Find output at t=0.1 sec
% Find I_R and I_C at t=0.1 sec

R = 5; C = 0.5;
syms t
v = @(t) 2*sin(t);
v_out = @(t) -R*C*diff(v,t);
fprintf('The output signal:\n');
disp(v_out(t))
v_out = limit(v_out,t,0.1);
fprintf('The output voltage at t=0.1 sec: %.5f V\n',v_out);
I_R = -v_out/R;
I_C = limit(C*diff(v,t),t,0.1);
fprintf('\n');
fprintf('I_R at t=0.1 sec: %.5f A\n',I_R);
fprintf('\n');
fprintf('I_C at t=0.1 sec: %.5f A\n',I_C);
```

### 7.4.5. Integrator Circuit
An integrator circuit is shown in Figure 26. For a given signal input $$V_{in}(t)$$, the output of the Op-amp will be an integration of the input with the multiplication of some certain value. As it is an inverting amplifier, the output will be inverted. The output of a differentiator circuit can be defined using the following equation.

$$V_{out}(t) = - \frac{1}{RC} \int v_{in}(t) \ dt$$

The current through the resistance $$R$$ and the capacitor $$C$$ can be represented by the following formula:

$$I_{R} = \frac{V_{out}}{R}$$

$$I_{C} = C\frac{dV_{in}}{dt}$$

<p align="center"><img width="624" alt="Captura de pantalla 2025-03-08 a las 19 32 06" src="https://github.com/user-attachments/assets/755f9139-3c29-487f-a91d-26755f9241ae" /></p>
<p align="center"> <em>Figure 26: Circuit diagram of a integrator circuit </em></p>

#### Example 24: Integrator Circuit
Consider the integrator circuit in Figure 26, where $$R = 5 &Omega;$$ and $$C = 0.5 F$$. If the input signal is $$v(t) = -5 cos(t)$$, determine:

(a) The output signal $$v_{out}(t)$$

(b) The output of the circuit at $$t = 0.1 s$$

(c) $$I_{R}$$ and $$I_{C}$$ at $$t = 0.1 s$$

```matlab
clc; clear all

% Integrator circuit
% Find output signal v_out(t)
% Find output at t=0.1 sec
% Find I_R and I_C at t=0.1 sec

R = 5; C = 0.5;
syms t
v = @(t) -5*cos(t);
v_out = @(t) (-1/R*C)*int(v,t);
fprintf('The output signal:\n');
disp(v_out(t))
v_out = limit(v_out,t,0.1);
fprintf('The output voltage at t=0.1 sec: %.5f V\n',v_out);
I_R = -v_out/R;
I_C = limit(C*diff(v,t),t,0.1);
fprintf('\n');
fprintf('I_R at t=0.1 sec: %.5f A\n',I_R);
fprintf('\n');
fprintf('I_C at t=0.1 sec: %.5f A\n',I_C);
```

## 7.5. Transistor Circuit
A transistor is a semiconductor-based device that has two _pn_ junctions. By sandwiching either a n-type with two p-types or a p-type with two n-types, a transistor is made. Therefore, a transistor has three terminals and three sections: emitter, base, and collector. The two types of transistors based on the _pn_ junction, termed as _p-n-p_ transistor and _n-p-n_ transistor, are shown in Figure 27.

<p align="center"><img width="732" alt="Captura de pantalla 2025-03-08 a las 19 45 05" src="https://github.com/user-attachments/assets/7269c01e-2bb3-40b1-a34f-65644a2a20df" /></p>
<p align="center"> <em>Figure 27: p-n-p and n-p-n transistor </em></p>

In a transistor-based circuit, the connections can be made in three ways (Figure 28):

- Common emitter (CE) connection
- Common base (CB) connection
- Common collector (CC) connection

<p align="center"><img width="914" alt="Captura de pantalla 2025-03-08 a las 19 47 33" src="https://github.com/user-attachments/assets/111be6d1-6907-4ec3-b718-8c55c21d993e" /></p>
<p align="center"> <em>Figure 28: Three configurations of a transistor </em></p>

In any transistor circuit, there is a relation of current among emitter, base, and collector currents that can be defined as follows:

$$I_{E} = I_{B} + I_{C}$$

Here, $$I_{E}$$, $$I_{B}$$, and $$I_{C}$$ are the emitter current, base current, and collector current, respectively.

Two common terminologies used in transistor circuits are as follows:

**Current amplification factor, $$&alpha;$$**
The current amplification factor is the ratio of output current to input current, generally regarded as $$&alpha;$$. For a transistor with a common base connection, the current amplification factor can be written as:

$$&alpha; = \frac{Collector current}{Emitter current} = \frac{I_{C}}{I_{E}}$$

**Base current amplification, $$&beta;$$**
The base current amplification factor is the ratio of output current to base current, generally regarded as $$&beta;$$. For a transistor with a common emitter connection, the current amplification factor can be written as:

$$&beta; = \frac{Collector current}{Base current} = \frac{I_{C}}{I_{B}}$$

#### Example 25: Transistor Circuit
Consider a transistor with a common base connection. If the emitter current, $$I_{E} = 10 mA$$, and $$&alpha; = 0.8$$, determine the collector current and the base current.

```matlab
clc; clear all

% Transistor Circuit
% Determine collector current I_C
% Determine base current I_B

I_E = 10; alpha = 0.8;
I_C = alpha*I_E;
I_B = I_E-I_C;
fprintf('Collector current: %.3f mA\n',I_C);
fprintf('Base current: %.3f mA\n',I_B);
```

### Exercises
1. Determine the equivalent resistance of the following circuit in Figure 29. Verify Ohm's law if the voltage varies from 1 V to 12 V.

<p align="center"><img width="531" alt="Captura de pantalla 2025-03-09 a las 15 51 39" src="https://github.com/user-attachments/assets/5d3f832a-6c16-43f7-b8df-00c58221cebb" /></p>
<p align="center"> <em>Figure 29: A resistive electrical circuit </em></p>
   
2. Consider the following circuit in Figure 30, where $$R_{1} = 0.2 ohm, R_{2} = 0.5 ohm, R_{3} = 1 ohm, R_{4} = 0.8 ohm$$, and $$R_{5} = 1.44 ohm$$.
   
   (a) Determine the equivalent resistance of the circuit

   (b) Determine the current if the voltage is 6 V.

<p align="center"><img width="423" alt="Captura de pantalla 2025-03-09 a las 15 54 17" src="https://github.com/user-attachments/assets/4de6cdc4-78dd-4302-9bad-78b55a3fa991" /></p>
<p align="center"> <em>Figure 30: A delta connected resistive electrical circuit </em></p>

3. (a) Create a function $$voltdiv()$$ which will calculate the divided voltages in the following circuit in Figure 31 given the values of $$R_{1} = 2 ohm, R_{2} = 4 ohm, R_{3} = 8 ohm,$$ and $$V = 24 V$$.

   (b) Create a function with $$curdiv()$$ which will calculate the  divided currents in the following circuit in Figure 32 given the values of $$R_{1} = 2 ohm, R_{2} = 4 ohm$$, and $$I = 8A$$.

<p align="center"><img width="430" alt="Captura de pantalla 2025-03-09 a las 15 57 06" src="https://github.com/user-attachments/assets/b8c207ee-cb96-443f-8474-f4e0dfc9e0bb" /></p>
<p align="center"> <em>Figure 31: An electrical circuit with three resistors in series </em></p>

<p align="center"><img width="438" alt="Captura de pantalla 2025-03-09 a las 15 59 37" src="https://github.com/user-attachments/assets/1703bdeb-426c-4b98-ba68-023e8ad873aa" /></p>
<p align="center"> <em>Figure 32: An electrical circuit with two resistors in parallel </em></p>

4. In the following circuit in Figure 33, $$R_{1} = 4 ohm, R_{2} = 9 ohm$$, and load resistance, $$R_{L} = 5 ohm$$. The circuit is running at a voltage of 12 V. Determine:

   (i) Thevenin's voltage $$V_{th}$$

   (ii) Thevenin's equivalent resistance $$R_{th}$$

   (iii) The current flowing through the load resistance $$R_{L}$$

   (iv) From the calculated Thevenin's circuit, vary the load resistance starting from 1 to 20 ohms, and determine the output power for all scenarios to prove the maximum power transfer theorem; also     determine the maximum output power


<p align="center"><img width="479" alt="Captura de pantalla 2025-03-09 a las 16 03 30" src="https://github.com/user-attachments/assets/9f40c09c-15b3-44fa-bbf8-1b0b484adbd8" /></p>
<p align="center"> <em>Figure 33: An electrical circuit with three resistors </em></p>

5. Using Example 13 as a reference, determine the apparent power, $$S$$, and the power factor of a series RLC circuit with:

   (a) P = 50 W and Q = 13 Var

   (b) P = 12 W and Q = 2.3 Var

6. Consider the following delta-connected system as shown in Figure 34, with the following parameters:

   $$V_{AB} = 100 &ang;0^\circ V$$
   
   $$V_{BC} = 110 &ang;120^\circ V$$
   
   $$V_{CA} = 120 &ang;240^\circ V$$
   
   $$Z_{1} = 8 &ang;25^\circ$$
   
   $$Z_{2} = 14 &ang;55^\circ$$
   
   $$Z_{3} = 18 &ang;-23^\circ$$

   <p align="center"><img width="731" alt="Captura de pantalla 2025-03-22 a las 17 28 44" src="https://github.com/user-attachments/assets/d6f0a233-4320-4322-a906-97d202519829" /></p>
   <p align="center"> <em>Figure 34: An electrical circuit delta connection </em></p>

   (a) Determine if the system is balanced or unbalanced. Hence, calculate:

       (i) Phase currents $$I_{AB}, I_{BC}$$, and $$I_{CA}$$

       (ii) Line currents $$I_{A}, I_{B}$$, and $$I_{C}$$

   Now consider the following parameters for the same system:

   $$V_{AB} = 100 &ang;0^\circ V$$
   
   $$V_{BC} = 110 &ang;120^\circ V$$
   
   $$V_{CA} = 120 &ang;240^\circ V$$
   
   $$Z_{1} = 8 &ang;25^\circ$$
   
   $$Z_{2} = 14 &ang;55^\circ$$
   
   $$Z_{3} = 18 &ang;-23^\circ$$

   (b) Determine if the system is balanced or unbalanced. Hence, calculate:

       (i) Phase currents $$I_{AB}, I_{BC}$$, and $$I_{CA}$$

       (ii) Line currents $$I_{A}, I_{B}$$, and $$I_{C}$$

7. (a) Determine the gain and output voltage of the inverting amplifier as shown in Figure 35, where $$R_{1} = 10 ohm, R_{2} = 14 ohm$$, and input voltage $$V_{in} = 24 V$$.
   
   (b) What is the gain and output voltage of the non-inverter amplifier if the diagram shown in Figure 36 has the same $$R_{1}, R_{2}$$, and input voltage of 5 ohm, 7 ohm, and 12 V, respectively?

   <p align="center"><img width="729" alt="Captura de pantalla 2025-03-22 a las 17 34 48" src="https://github.com/user-attachments/assets/cbc31e47-4268-4423-a4d1-5d7214ca57d0" /></p>
   <p align="center"> <em>Figure 35: An inverting amplifier </em></p>

   <p align="center"><img width="728" alt="Captura de pantalla 2025-03-22 a las 17 35 32" src="https://github.com/user-attachments/assets/1b95ecb2-aeb7-48b8-a0f8-69a242ce9686" /></p>
   <p align="center"> <em>Figure 36: A non-inverting amplifier </em></p>

8. (a) Design a differentiator circuit as shown in Figure 37, where you have an input of $$V(t) = 6·cos^2(t)$$, a resistor of 10 ohm, and a capacitor of 0.5 Farads. What will be the output signal, $$v_{out}$$ from the differentiator? What will the circuit's output voltage, $$I_{R}$$ and $$I_{C}$$ at 0.1 s?

   (b) Design an integrator circuit as shown in Figure 38, where you have an input of $$v(t) = cos^2(t)/sin(t)$$, a resistor of 12 ohm, and a capacitor of 0.2 Farads. What will be the output signal,      $$v_{out}$$ from the differentiator? What will the circuit's output voltage, $$I_{R}$$ and $$I_{C}$$ at 0.5 s?

   <p align="center"><img width="738" alt="Captura de pantalla 2025-03-22 a las 17 41 14" src="https://github.com/user-attachments/assets/22bc2df9-5f8a-4e9f-8c32-47546047fa13" /></p>
   <p align="center"> <em>Figure 37:  </em></p>

   <p align="center"><img width="722" alt="Captura de pantalla 2025-03-22 a las 17 41 58" src="https://github.com/user-attachments/assets/cac800c9-b851-4476-9eea-b578277d9f09" /></p>
   <p align="center"> <em>Figure 38:  </em></p>











