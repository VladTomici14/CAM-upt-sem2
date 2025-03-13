
function [euclideanNorms, scalarProduct, angleCosine, degreesAngle, vectorialProduct]=vectorsCalculator(v, w)
    % computing the euclidean norm for each vector 
    euclideanNorms = [norm(v) norm(w)];

    % computing the scalar product between the 2 vectors 
    scalarProduct = dot(v, w);

    % computing the cosine angle between the 2 vectors 
    angleCosine = scalarProduct / (euclideanNorms(1) * euclideanNorms(2));

    % computing the degrees angle between the 2 vectors 
    degreesAngle = rad2deg(acos(angleCosine));

    % computing the vectorial product between the 2 vectors
    vectorialProduct = cross(v, w);

end

% --- declaring the vectors --- 
v = [2 -1 3];
w = [0 3 -2];

% --- computing the 
[x1, x2, x3, x4, x5] = vectorsCalculator(v, w);

% --- displaying the results --- 
fprintf('euclidean norms: %.2f\n', x1);
fprintf('scalar product: %.2f\n', x2);
fprintf('cosine angle: %.2f\n', x3);
fprintf('angle in degrees: %.2f\n', x4);
fprintf('vectorial product: %.2f\n', x5);
