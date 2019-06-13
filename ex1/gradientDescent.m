function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);


tempTheta = zeros(2,1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    
    J = 0;
    h=X*theta;
    diff=h-y;
    J1=(1/m)*sum(diff);
    J2=(1/m)*sum(diff.*X(:,2));
    
    tempTheta(1) = theta(1)-(alpha*J1);
    tempTheta(2) = theta(2)-(alpha*J2);

    theta(1) = tempTheta(1);
    theta(2) = tempTheta(2);


    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end
    
end
