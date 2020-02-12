%Branavan Kalapathy
%MATH344L S2019
%5/23/2019


% MYLU - The function in this m-file computes an LU factorization
% of an n x n matrix under the assumption that elimination can be
% performed without row exchanges.
% Input: n x n matrix A.
% Output: lower triangular matrix L and upper triangular matrix U
% such that A = L*U.
function [L,U] = MYLU(A)
n = size(A,1); % Get the row or column dimension of A.
L = eye(n); % Initialize L.
U = A; % Initialize U.
% Perform elimination.
% The nested for loops fix a column first, and then go to each row.
for j= 1:n-1 % Span certain columns of A.
for i= j + 1 : n % Span certain rows of A.
L(i,j) = U(i,j)/U(j,j); % Do not forget the semicolons here
U(i,j:n) = U(i,j:n) - L(i,j)*U(j,j:n); % to suppress intermediate output!
end
end
end