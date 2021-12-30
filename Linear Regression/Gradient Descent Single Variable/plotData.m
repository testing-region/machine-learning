function plotData(x, y)
%PLOTDATA Plots the data points x and y into a new figure 
%   PLOTDATA(x,y) plots the data points and gives the figure axes labels of
%   population and profit.

figure; % open a new figure window

%   the population and revenue data have been passed in 
%   as the x and y arguments of this function.


plot(x, y, 'r*', 'MarkerSize', 10);
xlabel('Population in 10,000');
ylabel('Profit in $10,000');
title('Profit per city (population)')

end