function [fX, fY, slope, intercept, Rsquared] = linearRegression(x,y)

% Andrew LiPuma
%linearRegression Computes the linear regression of a data set
%   Compute the linear regression based on inputs:
%     1. x: x-values for our data set
%     2. y: y-values for our data set
%
%   Outputs:
%     1. fX: x-values with outliers removed
%     2. fY: y-values with outliers removed
%     3. slope: slope from the linear regression y=mx+b
%     4. intercept: intercept from the linear regression y=mx+b
%     5. Rsquared: R^2, a.k.a. coefficient of determination
if size(x)~=size(y)
    error('Matrices are not the same size')
end
n = length(y);
if issorted(x) == 1 && issorted(y) == 1
    sortedX = x;
    sortedY = y;
else  
    [sortedY, sortOrder] = sort(y);
    sortedX = x(sortOrder);
end
Q1value = (floor((n+1)/4));
Q3value = (floor(((3*n)+3)/4));
Q1 = sortedY(Q1value);
Q3 = sortedY(Q3value);
IQR = Q3-Q1;
upper_bound = Q3+1.5*IQR;
lower_bound = Q1-1.5*IQR;
outliers = find(sortedY < lower_bound | sortedY > upper_bound);
sortedX(outliers) = [];
sortedY(outliers) = [];
fX = sortedX;
fY = sortedY;
% calculate all sums from sorted vectors
n = length(fY)
A = [n sum(fX); sum(fX) sum(fX.^2)];
B = [sum(fY);sum(fX.*fY)];
a = A\B;
y = a(2)*x + a(1);
ybar = (sum(fY))/n;
Sr = sum(((fY-a(1)-(a(2)*fX))).^2);
St = sum((fY-ybar).^2);
Rsquared = 1-(Sr/St);
slope = a(2);
intercept = a(1);
end