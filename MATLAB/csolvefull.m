%Branavan Kalapathy
%MATH344L
%Lab6
% This function finds the rank, pivot variables, and free variables of a
% matrix.
% Input: m x n matrix A. 
% Output: Text stating the rank, pivot, and free variables of the matrix A.

function csolvefull(A,b)



    xp = zeros(size(A,2),1);
    [pivot,free] = csolve(A);
    pA = A(:,pivot);
    tempa = pA\b;
    xp(pivot) = tempa;
    xs = zeros(size(A,2), length(free));
        %Calculation of special solution using iteration
    for i = 1: length(free)

       tempb = -A(:,free(i));
       xs(pivot,i) = pA\tempb;
       xs(free(i), i) = 1;

    end

fprintf('the particular solution is ');
fprintf('\n')
disp(xp);

fprintf('The special solution is');
fprintf('\n')
disp(xs);
end

