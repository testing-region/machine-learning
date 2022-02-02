function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
A = X(:,2);  % Values of X without the ones column

for iter = 1:num_iters

    % Perform a single gradient step on the parameter vector theta. 

    h = X * theta;
    sh = h - y;
    sh1 = sum(sh);
    sh2 = sum(sh .* A);
    
    theta(1) = theta(1) - (alpha * (1/m) * sh1);
    theta(2) = theta(2) - (alpha * (1/m) * sh2);

    % Save the cost J in every iteration
    J_history(iter) = computeCost(X, y, theta);    

end

end
