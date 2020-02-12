%Branavan Kalapathy
% MATH 344L S2019
% 5/21/2019

function d = mydot(u,v)%%Function declaration
    m = length(u); %returns # of elements 
    d = 0; %intialize d
    for i = 1 : m % iterate through the # of elements
        d = d + u(i) * v(i); % dot product arithimetic 
    end % for loop end
end % functiom end
    