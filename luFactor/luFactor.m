function [L, U, P] = luFactor(A)
% luFactor(A)
%	LU decomposition with pivotiing
% inputs:
%	A = coefficient matrix
% outputs:
%	L = lower triangular matrix
%	U = upper triangular matrix
%       P = the permutation matrix
[m,n] = size(A); % Determines # of rows and columns 
P = eye(m,n);
L = zeros(m,n);
U = A;

for i = 1:m-1 % iterates from row 1 to the last row
    [x,y] = max(abs(U(i:m,i))); % checks matrix is correctly formatted. 
    y = y+(i-1);
    if x == 0 
        error('Cannot Invert Matrix')
    end
    L([i,y],:) = L([y,i],:); %pivoting format
    U([i,y],:) = U([y,i],:);
    P([i,y],:) = P([y,i],:);
    for y = i+1:n 
        factor = -U(y,i)/U(i,i); % determines the coefficient the row must be multplied by. 
        U(y,:) = U(y,:) + factor*U(i,:); %multiplies row by the factor and adds the two rows.
        L(y,i) = -factor; % stores the coefficient in the L matrix. 
    end
end
L = L + eye(m);
