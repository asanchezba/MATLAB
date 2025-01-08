## 5.1. Introduction
This chapter explains the basics of linear algebra and presents techniques to solve different algebraic and differential equations. 

## 5.2. Linear Algebra
**Rank** 
The rank of a matrix is the maximum number of linearly independent rows or columns. Here, a row or a column vector can be regarded as linearly independent if:

(a) The vector is not a scalar multiple of other vectors.

(b) The vector does not result from the combination of other vectors.

If the dimension of a matrix is _row x col_, the rank of that matrix will be either the maximum number of linearly independent rows or columns. It can be distinguished more precisely as follows:

(a) If _row > col_, the rank of the matrix &#8801; maximum number of linearly independent columns.

(b) if _row < col_, the rank of the matrix &#8801; maximum number of linearly independent rows.

**MATLAB command for determining the rank of a matrix, A**
```matlab
rank(A)
```

#### Example 1
Determine the ranks of the following two matrices A and B:

(i) A = [1 2 4; 2 4 8 ]

(ii) B = [1 1 2; 5 2 7; 0 4 4; 2 6 8]

```matlab
% Determining rank
A = [1 2 4; 2 4 8];
B = [1 1 2; 5 2 7; 0 4 4; 2 6 8];
disp('The rank of the matrix A:')
rank(A)
disp('The rank of the matrix B:')
rank(B)
```

### 5.2.1. Eigenvector and Eigenvalue
Consider a square matriz _X_ of dimension _n x n_. The eigenvector, $$v$$, of the square matrix A signifies a linear transformation that follows the following condition:

$$X v = \lambda v$$

Here, $$\lambda$$ is a scalar value, which can also be regarded as eigenvalue; and $$v$$ $$\in$$ $$R^n$$ is a nonzero vector.

For determining the eigenvalues, the following characteristic equation can be solved for $$\lambda$$:

$$|XI - \lambda| = 0$$

Where _I_ is the identity matrix having the same dimension as _X_. 

Eigenvalues of a matrix X in MATLAB:
```matlab
eig(X)
```

#### Example 2
Find the eigenvalues of the following matrix:

$$ X = [1 2 0; 0 5 0; 1 3 1] $$

```matlab
clc; clear all

% Eigenvalue
X = [1 2 0; 0 5 0; 1 3 1];
disp('The eigenvalues of X are:')
eig(X)
```

#### Example 3 
Find the eigenvector of the  following matrix:

$$ X = [1 2 0; 0 5 0; 1 3 1] $$

```matlab
clc; clear all

%Eigenvector
X = [1 2 0; 0 5 0; 1 3 1];
[vector,lambda] = eig(X);
disp('The eigenvalues of X:')
lambda=sum(lambda)
disp('The eigenvector of X:')
vector
```
Here, the MATLAB command _[vector,lambda]=eig(X)_ provides two outputs - the eigenvector and a diagonal vector containing the eigenvalues (_lambda_). 

## 5.3. Quadratic Equations
MATLAB has built-in functions to solve quadratic equations using the _solve_ command. The "solve" command is also useful to solve multiple equations with multiple variables. 

```matlab
solve(equation,variable)
```
Here, the variables can be single or multiple, and the output of the solve function can also be single or multiple. 

#### Example 4
Consider a quadratic equation: $$2x^2 + 4x + 5 = 0$$. Determine the values of $$x$$.

```matlab
clc; clear all

% Solving quadratic equation
% 2x^2+4x+5=0

syms x
x_val = solve(2*x^2+4*x+5==0,x);
disp('The solutions are:');
x_val
```

#### Example 5
Consider the following two equations:

$$2x^2 + 4xy + 5 = 0$$

$$3y^2 + 5xy - 2 = 0$$

Determine the values of $$x$$ and $$y$$. 

```matlab
clc; clear all

% Two quadratic equations
% 2x^2+4xy+5=0
% 3y^2+5xy-2=0

syms x y
[x_val,y_val] = solve(2*x^2+4*x*y+5==0,3*y^2+5*x*y-2==0);
disp('The solutions are:');
disp('x = ');
disp(x_val);
disp('y = ');
disp(y_val);
```

## 5.4. Differential Equations

### 5.4.1. Ordinary Differential Equations
Ordinary equations can be solved by _dsolve_ function. It can be used not only for first-order differential equations but also for higher degrees.

```matlab
dsolve(equation,condition)
```
_dsolve_ function has two parameters: _equation_, which represents the differential equations to solve, and _condition_, which is an optional feature. If the problem has initial conditions, the function will provide an exact solution based on those conditions. Otherwise, the function will provide generalised results with an unknown constant _C1_. 

#### Example 6
Consider the following first-order differential equation:

$$dy/dx = 2x + y$$

(i) Solve the differential equation

(ii) If initial condition $$y(0) = 1$$, find the solution of the differential equation

```matlab
clc; clear all

% 1st order differential equation
% dy/dx=2*x+y

syms y(x)
diff_eq = diff(y,x) == 2*x+y;
disp('Solution without initial condition:');
Sol_y(x) = dsolve(diff_eq)
% If the initial condition y(0)=1
condition = y(0) == 1;
disp('Solution wiht initial condition:')
Sol_y(x) = dsolve(diff_eq,condition)
```

#### Example 7
Solve the following second-order differential equation:

$$d^2y/dx^2 = 2x^3 + 3dy/dx - 5; y(0) = 1, y'(0) = 1$$

```matlab
clc; clear all

% 2nd order differential equation
% (dy/dx)^2 = 2*x^2+3dy/dx-5
% Initial conditions: y(0)=1, y'(0)=1

syms y(x)
diff_eqn = diff(y,x,2) == 2*x^2+3*diff(y,x)-5;
condition1 = y(0) == 1;
dy = diff(y,x);
condition2 = dy(0) == 1;
condition = [condition1 condition2];
Sol_y(x) = dsolve(diff_eqn,condition)
```

#### Example 8
Solve the following third-order differential equation:

$$d^3y/dx^3 = 3x^2 + 3d^2y/dx^2 - 2dy/dx + 1; y(0) = 1, y'(0) = 0, y''(0) = 1$$

```matlab
clc; clear all

% 3rd order differential equation
% (dy/dx)^3 = 3*x^2+3*(dy/dx)^2-2*dy/dx+1
% Initial conditions: y(0)=1, y'(0)=0, y''(0)=1

syms y(x)
diff_eqn = diff(y,x,3) == 3*x^2+3*diff(y,x,2)-2*diff(y,x)+1;
dy = diff(y,x);
d2y = diff(y,x,2);
condition1 = y(0) == 1;
condition2 = dy(0) == 0;
condition3 = d2y(0) == 1;
condition = [condition1 condition2 condition3];
Sol_y(x) = dsolve(diff_eqn,condition)
```

### 5.4.2. Partial Differential Equations
In the partial derivative of a function of multiple variables, the differentiation is performed with respect to one variable while considering the rest of the variables as constant. To solve a partial differential equation, the first step is to solve the partial derivative terms using _diff()_ command. 

#### Example 9
Consider the following partial differential equation and solve it for x.

$$\frac{\partial}{\partial x}(2x^2+y-5)-x^2=0$$

```matlab
clc; clear all

% Partial differential equation
% del(F)/del(x) - x^2 = 0
% F = 2*x^2+y-5

syms x y
F = 2*x^2+y-5;
P_diff = diff(F,x);
disp('Solution:')
Sol_x = solve(P_diff-x^2==0,x)
```
After solving each partial derivative term, we have used _solve()_ function to finally solve the partial differential equation for $$x$$.

## 5.5. Integral Equations
Integration can be solved using _int()_ function. Integrals can be of two types: definite and indefinite. In an indefinite integral, the limits are not defined; whether in a definite integral, the limits are defined for the variable with respect to which the integration will be performed. 

Integration of a function _f_ with respect to _x_ with a limit of [a,b]
```matlab
int(f,x,a,b)
```
After determining the integral terms, using _solve()_, integral equations can be solved. 

#### Example 10
Consider the following single-variable integral equation:

$$\int 2x^2dx - 3x = 0$$

(i) Solve the the integral equation for $$x$$.

(ii) If the limit of $$x$$ is [0 2], find the solution for $$x$$.







