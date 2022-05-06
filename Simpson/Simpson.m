function [I] = Simpson(x,y)
% Numerical evaluation of integral by Simpson's 1/3 Rule
% Inputs
%   x = the vector of equally spaced independent variable
%   y = the vector of function values with respect to x
% Outputs:
%   I = the numerical integral calculated
[mx,nx]=size(x);
[my,ny]=size(y);
l=1;
xdiff = diff(x);
if nx ~= ny
    error('input lengths are not equivalent');
end
while (l+1) <= length(xdiff)
    if xdiff(l) - xdiff(l+1) > 0
        error('The x vector is not linearly spaced')
    end
l = l+1;
end
mx=size(x,2);
h=(x(end)-x(1))/(mx-1);
sum = y(1);
for i = 2:(nx-2)
    if mod(i,2)==0
        sum=sum+4*y(i);
    else
        sum=sum+2*y(i);
    end
end
if mod(nx,2) == 0
    warning('The trapezoidal rule must be used for the last interval')
    sum = sum + y(nx-1);
    I = (sum*h/3) + ((y(nx)+y(nx-1))*h/2);
else
    sum = sum + 4*y(nx-1) + y(nx);
    I = sum*h/3;
end
end