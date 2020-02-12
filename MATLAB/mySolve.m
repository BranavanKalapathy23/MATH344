%Branavan Kalapathy
%MATH344L 003
%Lab 3
% m-file that solves A*x = b
function x = mySolve(A,b) % solve function
    if (size(A,1) ~= size(A,2)) % check to see if given matrix is square
        error('Matrix A is not a square matrix');
        elseif (size(b,1) == 1 && size(b,2)~=1) % column vector checkl
            error('vector b is not a column vector');
    else 
        
            
        [L,U] = MYLU(A); %MYLU Factorization of matrix A
        y = forward(L,b); %Calls forward
      if (size(A,1) ~= size(b,1)) %dimensions check
        error('invalid dimensions, n # of columns of A doees not match n # of columns of b');
      else
          
        x = backward(U,y); %calls backward
      end 
    end
end

