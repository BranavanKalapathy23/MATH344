
%Branavan Kalapathy
%MATH344L
%Lab5

function [pivot,free] = csolve(A) % actual MATLAB code
[m,n] = size(A);%obtain the size of A
pivot = [];% initialize "pivot"
free = 1:1:n; % initialize "free"
R = rref(A); % actual MATLAB code, rref(A) returns reduced row
for i=1:m % visit every row
for j=1:n %visit every column
if(R(i,j) == 1) %iteration check for leading 1 store the column locaton
                %in pivot
     pivot = [pivot,j];
     break;
end
end
end

% Now "pivot" stores the indexes of all the pivot variables. The indexes
% not in "pivot" are the free variables. 
% Remove the elements in "pivot" from "free".
free(pivot) = '';

% Print the results.
fprintf('The rank of the coefficient matrix is %d. \n', length(pivot));
fprintf('Pivot variables:');
for i = 1:length(pivot)
    fprintf(' %d', pivot(i));
end
fprintf('\n');
fprintf('Free variables:');
for i = 1:length(free)
    fprintf(' %d', free(i));
end
fprintf('\n');

end

