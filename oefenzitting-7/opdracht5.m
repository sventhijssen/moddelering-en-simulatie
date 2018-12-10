alphas = [0.1 0.25 0.45 0.49 0.5];

for alpha=alphas
    G = transitionMatrix(alpha);
    p0 = zeros(1,17);
    p0(1) = 1;

    while norm(p0) > eps
        p0 = p0*G;
    end
    
    disp(p0);
end