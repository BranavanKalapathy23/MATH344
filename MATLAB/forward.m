%Branavan Kalapathy
%MATH344L S019
%Lab3
%This is a mfile that does foward operation of lowe-tri system.

function x = forward(A,b) % forward function to solve lower tri-system
       n = size(A,1);
       x = zeros(n,1);
       x(1) = b(1)/A(1,1);
       for i = 2:1:n
           x(i) = (b(i) - A(i,1:i-1)*x(1:i-1))/A(i,i); %row operations

       end
end

       