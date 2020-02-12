%Branavan Kalapathy
% MATH 344L S2019
% 5/21/2019


function A = MyDiagMatrix(n) %function declaration
         A = zeros(n,n); % returns an nxn zero matrix
         for i = 1 : n  % iterates through elements of n
             A(i,i) = 210*i - 100; % arithemtic to the diagMatrix
             
         end % for loop end
end % function end
