%Branavan Kalapathy
%MATH344L S019
%Lab3
% THis is a m-file tht solves upper tri-matrix called backward.
function x = backward(A,b)
    n = size(A,1);
    x = zeros(n,1);
    x(n) = b(n)/A(n,n);
    for i= n-1:-1:1
        x(i) = (b(i) - A(i,i+1:n)*x(i+1:n))/A(i,i); %row operations
    end
end