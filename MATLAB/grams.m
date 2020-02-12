%Branavan Kalapathy
%6/12/2018
%MATH 344L


function [Q,R] = grams(M)
    [m,n] = size(M);
    
    for i = 1:n % for loop for the sum
        v = M(:,i);
       for j = 1:i-1
           R(j,i) = Q(:,j)'*v;
           v= v - R(j,i)*Q(:,j);% subtract he sum from the column of Q
       end
    R(i,i) = norm(v);% normalie of Q.
    Q(:,i) = v/R(i,i);
    end
    