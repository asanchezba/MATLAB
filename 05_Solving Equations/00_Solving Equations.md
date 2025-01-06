## Introduction
This chapter explains the basics of linear algebra and presents techniques to solve different algebraic and differential equations. 

### Linear Algebra
**Rank** 
The rank of a matrix is the maximum number of linearly independent rows or columns. Here, a row or a column vector can be regarded as linearly independent if:

(a) The vector is not a scalar multiple of other vectors.

(b) The vector does not result from the combination of other vectors.

If the dimension of a matrix is _row x col_, the tank of that matrix will be either the maximum number of linearly independent rows or columns. It can be distinguished more precisely as follows:

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

### Eigenvector and Eigenvalue
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

### Quadratic Equations
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



