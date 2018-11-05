function animate_svd(A, dt, min_val, step, max_val)
%ANIMATE_SVD Animate the evolution of a reduced SVD.
%   A: the matrix on which to perform SVD
%   dt: the time step
%   min_val: the minimum
%   step: the compression step
%   max_val: the maximum value

x = min_val:step:max_val;
y = min_val:step:max_val;

i = 1;
for k=min_val:step:max_val
    disp(k);
    [U, S, V] = svd(A);
    [m,n] = size(S);
    S_k = S;
    S_k(k+1:m,k+1:n) = 0;
    A_k = U*S_k*V';
    imagesc(A_k);
    y(i) = relative_error(A,k);
    i = i+1;
    pause(dt);
end

semilogy(x,y);
end