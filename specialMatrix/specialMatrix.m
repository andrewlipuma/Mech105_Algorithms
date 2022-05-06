function [A] = specialMatrix(n,m)
% This function should return a matrix A as described in the problem statement
% Inputs n is the number of rows, and m the number of columns
% It is recomended to first create the matrxix A of the correct size, filling it with zeros to start with is not a bad choice
%Create Matrix to work off of
A = zeros(n,m)
% Run through each row and column of the matrix up to the input variables
A(1,:) = [1:m]
A(:,1) = [1:n]
% Check number of arguments
if nargin == 2
% Sum the variables on the top and the left of the position in the matrix. 
for i = 2 : n
    for k = 2 : m
    A(i,k) = A(i-1,k) + A(i,k-1);
    end
end
else 
% if there are too many arguments the error will be displayed 
    error('Too many inputs')
end
% Things beyond here are outside of your function