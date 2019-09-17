function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% m = 300 "examples"
% n = 2   "features"

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%

% x1, x2, x3 are features (n)
% x(1), x(2), x(3) are examples "Vector of all features values" (m)
% X capital is a matrix m*n ,where  m is number of examples
%                                   n is number of features
                                 

for i = 1:K
    sum = zeros(1,n);
    counter = 0;
    
    for j = 1:m
        if idx(j) == i
            sum = sum + X(j,:);
            counter = counter + 1;
        end
    end
    
    centroids(i,:) =  sum ./ counter;
end
% =============================================================


end

