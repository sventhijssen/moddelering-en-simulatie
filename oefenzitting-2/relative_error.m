function e = relative_error(A, k)
%RELATIVE_ERROR Calculates the relative error between A and A_k,
% based on the 2-norm. Formula: sigma_{k+1}/sigma_1
%   A: the original matrix
%   k: the rank k of the reduced matrix

A_S = svd(A);

sigma_k_1 = A_S(k+1);
sigma_1 = A_S(1);

e = sigma_k_1/sigma_1;
end

