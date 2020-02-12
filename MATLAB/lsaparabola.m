%Branavan Kalapathy
% 6/11/2019
% MATH 344L


function lsaparabola
  load Lab8data2.mat; %load file
  [n,r] = size(data);%size of data paramatrized
   x = data(:,1);
   y = data(:,2);
  
  A =ones(n,3); %form of Matrix A
  b = y; %form of Vector b
  A(:,1) = x.^2;
  A(:,2) = x;
  xv=(A'*A)\(A'*b); % Projection of Matrix A onto b
  %Retreive Paramters
  C = xv(1);
  D = xv(2);
  E = xv(3);
  xplot = linspace(min(x),max(x),1000); 
  yv=C*xplot.^2 + D*xplot + E; % form of Parabola
  fprintf('parabola: %ft^2+%ft+%f\n',xv);%print results
  plot(xplot,yv,'g',x,y,'b*'); %plot
  title('Parabola best fit');
  legend('parabola','data');

  
  
  
end
