## 8.1. Introduction
<p align="justify">
The study of control systems is required to govern the behaviour of any physical system, where the behaviour can be regarded as the response or the output of that system. In control systems, one of the objectives is to regulate the response with respect to the input of that system. The response of a physical system can be represented mathematically either in the frequency domain or the time domain. The concepts of both of these domains in control systems will be explained in this chapter. To implement the concepts of control systems, it is required to convert any physical system to a mathematical representation. The opposite can also be necessary for various aspects. In this chapter, the concept of state-space representation, which can be used to convert any physical system to a mathematical model, will be demonstrated. 
</p>

## 8.2. Frequency Response Overview
<p align="justify">
Control systems are mostly associated with signals, because by understanding the signals and their response by the system, one can easily control different aspects of the complete system. These systems may be exposed to the signals of different frequencies, the response for which is important to comprehend and eventually control the system. The frequency response can therefore be stated as the output of a system to a waveform of a particular frequency. More specifically, the frequency response can provide more information on the amplitude response and phase response of a system.
</p>

<p align="justify">
A system in control system is commonly represented either in a time domain, an s-domain, or a frequency domain. In the s-domain, the system is represented by a parameter called $$s$$, which is represented by a transfer function, and which can be derived from a time domain system through the Laplace transform. A frequency domain, on the other hand, provides specific details on the amplitude and phase of the system. This can be determined from the s-domain by replacing $$s$$ with $$j &omega;$$, where $$&omega;$$ is the frequency of the input signal. 
</p>

### 8.2.1. Linear Time-Invariant System
Linear time-invariant (LTI) systems refer to a certain group of systems with two distinctive characteristics: **linearity** and time **invariance**. Linearity is when the output of the system is linearly related to the output. 

