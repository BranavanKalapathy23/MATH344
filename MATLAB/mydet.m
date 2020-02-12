%Branavan Kalapathy
%MATH 344L
%Lab10
function DetA = mydet(B)
[~,n] = size(B);
DetA=0;

%solve for a 2x2 matrix and then for m,n > 3
if n==2
DetA=B(1,1)*B(2,2)-B(1,2)*B(2,1);
else
    % if not 2x2 reduce its order of 1, compute  a matrix
    % with r-1 rows and c-1 columns. right after recall the function using
    % the reduced matrix
supA=B; % supplement matrix
for i=1:n
TEMPi=supA(1,i); % saving the  element of the 1st row and ith column of the a supplement matrix which is supA
if TEMPi~=0
supA(1,:)=[]; % remove the first row to generate  the reduced matrix
supA(:,i)=[]; % remove the ith column to generate the reduced matrix
TempJ=supA;
DetTempj=mydet(TempJ); % recursion: determinant calculation of the reduced matrix by function recall
DetA=DetA+((-1)^(1+i))*TEMPi*DetTempj;
supA=B;   
end
end
end