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

