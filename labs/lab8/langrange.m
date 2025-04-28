function vy = langrange(Xi, Yi, vx)
    n = length(Xi);        
    m = length(vx);        
    vy = zeros(size(vx));

    % ----- looping over each evaluation point in vx ----- 
    for i = 1:m
        x = vx(i);
        % ----- initialising the interpolation sum at point x ----- 
        P = 0;
        
        % ----- looping over each Lagrange basis polynomial ----- 
        for j = 1:n
            % ----- computing L_j(x) ----- 
            L = 1;
            for k = 1:n
                if k ~= j
                    L = L * (x - Xi(k)) / (Xi(j) - Xi(k));
                end
            end
            % ----- adding contribution of term to the interpolation
            % polynomial ----- 
            P = P + Yi(j) * L;
        end

        % ----- storing the result ----- 
        vy(i) = P;
    end
end