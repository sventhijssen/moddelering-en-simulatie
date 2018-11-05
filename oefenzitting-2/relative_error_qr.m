function e = relative_error_qr(A,A_k)
%RELATIVE_ERROR_QR Calculates the relative error between A and A_k,
% with A_k a reduced QR factorization of rank k of A (with 2-norm).
%   A: the original matrix
%   A_k: the QR factorization
e = norm(A - A_k)/norm(A);
end

