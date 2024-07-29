# Vector and Matrices

### Creating Vectors

A vector can be created using the values enclosed within square brackets, [ ]. A space is used to differentiate among different values. A vector can be a row vector or column vector. In a row vector, the values are separated using space, and semicolons are used among the values in the case of a column vector.

For example, A is a row vector, which contains four values that are separated using space between two neighbouring values. The size of vector A is 1 x 4. B is a column vector, where the values are arranged over a single column. The size of vector B is 4 x 1.

```matlab
% Row vector
A = [1 5 7 9]

% Column vector
B = [1; 5; 7; 9]
```
A vector having values of equal increment or decrement can be defined in an easier way for avoiding enlisting a large number of values manually.

The vector C has three entities—the first one is the starting value and the last one is the ending value of the vector. The values are equally spaced and have a +2 increment. The increment value represents the middle entity of the C vector. In case, the increment is +1, the middle entity can be skipped as MATLAB considers +1 as the default increment. For decrement or negative increment, the middle entity will become a negative value.

```matlab
% Row vector with increments
C = 1:2:12

% Row vector with decrements
D = 12:-2:1
```

### Creating Matrices

A matrix can be defined in the same way as a vector and can have multiple rows and columns, based on which its size is determined. The size can be controlled by using space and semicolons. Space indicates a shift from one column to another within a single row, whereas a semicolon represents the end of one row or the start of a new row. The size of any vector is defined by row x column.

```matlab
% Matrix
A = [1 3 5;2 4 3;2 8 4;1 6 9]
```

### Manipulation of vectors and matrices

A matrix can be formed by combining multiple vectors of the same size. After defining a vector or matrix, it is essential to access each value. V1, V2, and V3 represent the values of the first, second, and third rows of M, respectively. A colon (:) is used while accessing multiple values.

```matlab
% Definition of vector 1
V1 = [1 2 5]

% Definition of vector 2
V2 = [4 6 8]

% Definition of vector 3
V3 = [5 7 9]

% Formation of a matrix
M = [V1;V2;V3]

% Accessing a value from the matrix
M(2,3)

% Accessing the values in the first row of every column of matrix M
V1 = M(1, :)

% Accessing the values in the first column of every row of matrix M
V2 = M(:, 1)
```

### Dimensions of matrices

The dimension of a matrix can be determined by _size()_ and is represented by row x column, where row indicates the total number of rows and column refers to the number of columns of that matrix.

```matlab
% Dimension of a matrix
clc; clear;

A = [2, 1; 4, 3; 2, 1]
dim = size(A);
fprintf('Dimension of matrix A:\n');
disp(dim)
```

### Operations on matrices

**Addition and Subtraction**
The addition and subtraction of two matrices with identical size can be performed by using the “+” and “-”.

**Multiplication**
The multiplication of two matrices is possible only if the number of columns of the first matrix equals the number of rows of the second matrix by using the "*". 

**Transpose**
A transpose matrix is a matrix whose row and column values interchange with each other. The command for transposing a matrix is to use the prime (') symbol.

**Determinant**
A determinant of a matrix provides a scalar value; however, it is only applicable for a square matrix. A square matrix is a matrix whose row and column numbers are identical. For example a matrix of size 2 x 2. The command for calculating the determinant is to use det() function.

**Identity matrix**
An identity matrix has 3 distinctive characteristics:
1. It is a square matrix
2. The diagonal values are 1. The other values except for the diagonal are all zero
3. The determinant is always 1
The command for identity matrix is _eye(N)_ where N represents the dimension.

**Inverse matrix**
If the determinant of a certain matrix is zero, it is called a singular matrix. A non-singular matrix always has a nonzero determinant. Consider a non-singular square matrix X having a dimension of n x n. If another matrix Y, having the same dimension as X, can be related as XY = I, the second matrix Y can be regarded as the inverse matrix of X. Here, I represents the identity matrix, which has the same dimension as X and Y.

If X is a matrix, the inverse matrix of X can be represented as X^-1. The matrix X is invertible only if:
1. X is a square, non-singular matrix
2. XX^-1 = I
Command for calculating the inverse of a matrix is _inv()_.

```matlab
% Operations on matrices
clc; clear;

A = [1 4 6; 2 5 7; 3 6 8];
B = [2 4 6; 3 5 7; 4 6 8];

%Addition
Add = A + B

% Substraction
Sub = A - B

X = [1 2 4; 2 5 6];
Y = [1 2; 3 4; 5 7];

% Multiplication
mul = X * Y

% Transpose
X_t = X'

% Determinant
det(A)

% Identity matrix
I = eye(4)
```

### Matrix Concatenation

Multiple matrices can be appended together to form a larger combined matrix using matrix concatenation. Matrix concatenation can be of two types—horizontal and vertical concatenation. 

```matlab
% Matrix Concatenation
clc; clear;

A = [1 4;2 4;3 2];
B = [2 -4;1 3;7 9];
fprintf('Horizontal concatenation:\n');
C = [A,B]
fprintf('Vertical concatenation:\n');
D = [A;B]
```

### Creating Arrays of Zeros, Ones, and Random Numbers

Command for producing arrays of zeros: _zeros(row,col)_
Command for producing arrays of ones: _ones(row,col)_

```matlab
% Arrays of zeros, ones
clc;clear;

row = 3;
col = 2;
A = zeros(row,col);
B = ones(row,col);
fprintf('Array of zeros:\n');
disp(A);
fprintf('Array of ones:\n');
disp(B);
```
Random number generation can be very effective for verifying any particular program with random input values. Based on the types of random numbers that are required to be generated, command may vary.

- **Command for arrays of random numbers uniformly distributed:** _rand(row,col)_
- **Command for arrays of random numbers normally distributed:** _randn(row,col)_
- **Command for arrays of random pseudo-integer numbers uniformly distributed:** _randi([num<sub>min</sub>,num<sub>max</sub>], [row,col])_
  _row_ and _col_ indicate the array size; num<sub>min</sub> and num<sub>max</sub> are the minimum and maximum range of the generated random numbers

```matlab
% Arrays of random numbers

clc;clear;

row = 3;
col = 2;
num_min = 2;
num_max = 8;

% uniformly distributed random numbers
A = rand(row,col);
% normally distributed random numbers
B = randn(row,col);
% uniformly distributed random pseudo-integer
C = randi([num_min,num_max],[row,col]);

fprintf('Array of uniformly distributed random numbers:\n');
disp(A);
fprintf('Array of normally distributed random numbers:\n');
disp(B);
fprintf('Array of uniformly distributed random pseudo-integer:\n');
disp(C);
```

### Array Function for One-Dimensional Arrays

Several functions are available in MATLAB to perform operations on a one-dimensional array.

***linspace()*** is a function that can create a one-dimensional array containing equally spaced values within a specific range.

The command is: linespace(Lower<sub>limit</sub>, Upper<sub>limit</sub>, point)

where _Lower<sub>limit</sub>,Upper<sub>limit</sub>_ is a specific range, and _point_ indicate the number of evenly space values. 

An alternative way is to specify the space/range between the upper and lower limits with the command:  Lower<sub>limit</sub>:space:Upper<sub>limit</sub>

To determine the maximum or the minimum values within an array, ***max()*** and ***min()*** can be used

```matlab
% Array functions
clc;clear

% Linspace function
Up_range = 2;
Low_range = 12;
point = 5;
A = linspace(Up_range,Low_range,point);
fprintf('Linearly space one-dimensional array:\n');
fprintf('--------------------------------------\n');
fprintf('Using linspace function:\n');
disp(A);
% Alternative version
space = 2.5;
B = Up_range:space:Low_range;
fprintf('Without using linspace function:\n');
disp(B);

% Finding maximum and minimum value from an array
A = randi([1,30],1,5);
max_A = max(A);
min_A = min(A);
fprintf('Maximum value of the array A:');
disp(max_A);
fprintf('Minimum value of the array A:');
disp(min_A);
```

### Mean, Standard Deviation, Variance, and Mode

Mean, standard deviation, and variance are three essential statistical terminologies to understand the distribution of data. 

**Mean:** The average of all the values in an array. It can be determined using the _mean()_ function.

**Variance:** The average of the squared difference between each value and the mean of an array. It can be determined by using _var()_ function.

**Standard deviation:** Is the square root of the variance of an array. It can be determined by using _std()_ function.

**Mode:** the value that creates the maximum appearance. It can be determined by using _mode()_ function.

```matlab
% Mean, variance, standard deviation, and mode
clc;clear;

A = randi([1,50],1,6);
mean_A = mean(A);
variance_A = var(A);
std_A = std(A);
mode_A = mode(A);
fprintf('One-dimensional array:\n');
disp(A);
fprintf('Mean value of A = %.2f\n',mean_A);
fprintf('Variance of A = %.2f\n',variance_A);
fprintf('Standard deviation of A = %.2f\n',std_A);
fprintf('Mode of A = %.2f\n',mode_A);
```

### Dot Operator

The dot operator "." can be used to:
- Dot multiplication or element-wise multiplication of two arrays of the same size. **".*"**
- Element-wise division of two arrays of the same size, or when the numerator is a scalar value and the dominator is an array. **"./"**
- Determining power or exponential whenever either the base or the power is an array. **".^"**
- For writing complicated and complex equations

```matlab
% Dot Operator
clc;clear;

% A and B are two arrays;
% scalar_val is a scalar value;

A = randi([1,2],2,3);
B = randi([1,2],2,3);
fprintf('Some instances of the usage of dot operator:\n');
fprintf('---------------------------------------------\n');

% Dot multiplication
fprintf('Dot multiplication of two arrays:\n');
disp(A.*B);
% Element-wise division between two arrays
fprintf('Element-wise division of two arrays:\n');
disp(A./B);
% Division: Numerator-scalar and denominator-array
scalar_val = 5;
fprintf('Division when numerator-scalar and denominator-array:\n');
disp(scalar_val./A);
% Power value: Eiter the base, or power is an array
Base = 10;
fprintf('Power term is an array:\n');
disp(Base.^A);
fprintf('Base teerm is an array:\n');
disp(A.^scalar_val);
```

### Table Arrays, Cell Arrays, and Structure Arrays

A table containing different data types can be created using the built-in function _table(variable1, variable2,...)_. All the variables can be accessed and operated like separate arrays. 

```matlab
% Table Array
% Headers: Battery name, Energy density, Lifecycle, Safety
clc; clear;

Battery_name = {'Li-ion';'Liquid super capacitor';'Lead acid'};
Energy_density = [5;2.5;2];
Life_cycle = [2;5;1.5];
Safety = {'High';'Low';'Moderate'};
TABLE = table(Battery_name,Energy_density,Life_cycle,Safety);

fprintf('Comparison among different battery types:\n');
fprintf('------------------------------------------\n');
disp(TABLE);

% Accessing each colum of the table
fprintf('Accessing the data of Battery_name column:\n');
disp(TABLE.Battery_name);
fprintf('Accessing the data of Energy_density column:\n');
disp(TABLE.Energy_density);
fprintf('Accessing the data of Lifecycle column:\n');
disp(TABLE.Life_cycle);
fprintf('Accessing the data of Safety column:\n');
disp(TABLE.Safety);
```

In a cell array, there are different cells, each of which can contain data of different types. The command is _cell(row,col)_ where _row_ and _col_ are used to define the size of the cell array, as well as to access each of the cells.

```matlab
% Cell Array

A = cell(2,3);
A(1,:) = {3,4,4};
A(2,:) = {'A','B','C'};
fprintf('Cell Array, A:\n');
disp(A);
```

In a structure array, different data can be grouped in several fields. In each field, there can be data of different types. The command is _struct(Field1,Val1<sub>Field1</sub>,Field2,Val2<sub>Field2</sub>,...)_. Where Field1, Field2,... indicates the different fields under which different data will be grouped. The grouped data of each field is represented by Val1<sub>Field1</sub>, Val2<sub>Field2</sub>, ...

```matlab
% Structure Array
Field1 = 'Battery_Name';
val_Field1 = {'Li-ion';'Liquid super capacitor';'Lead acid'};
Field2 = 'Energy_Density';
val_Field2 = [5,2.5,2];
Field3 = 'Life_Cycle';
val_Field3 = [2,5,1.5];
Field4 = 'Safety';
val_Field4 = {'High';'Low';'Moderate'};

fprintf('Structure array of different battery types and properties:\n');
S = struct(Field1,val_Field1,Field2,val_Field2,Field3,val_Field3,Field4,val_Field4)
fprintf('Accessing first field of the structure:\n');
disp(S(1));
fprintf('Accessing second field of the structure:\n');
disp(S(2));
fprintf('Accessing third field of the structure:\n');
disp(S(3));
```

### Exercice 1

Consider three matrices given as follows:

<img width="767" alt="Captura de pantalla 2024-07-29 a las 15 42 25" src="https://github.com/user-attachments/assets/59d8819c-1f3a-4adc-8b72-838cd28e9773">
