%Branavan Kalapathy
%MATH 344L 
% 6/20/19


function R = PageRank(P)
         [m,N] = size(P); %intializing varibles and retrieve the size.
         R = rand(N,1); %Randomize vector
         R = R/sum(R); % include sum
         
          while(norm(P*R-R) >.00005)
                R = P*R; % new R is uptdated based on error
              
             
          end
          
          
          



end
