function animate_qr(A, dt, min_val, step, max_val)
%ANIMATE_QR Animate the evolution of a reduced QR factorization.
%   A: the matrix on which to perform QR
%   dt: the time step
%   min_val: the minimum
%   step: the compression step
%   max_val: the maximum value

x = min_val:step:max_val;
y = min_val:step:max_val;

i = 1;
figure;
colormap gray;
for k=min_val:step:max_val
    disp(k);
    
    % Return permutation matrix to denote column pivoting
    % (QR with permutation has better numerical results)
    [Q, R, P] = qr(A);
    Q_k = Q(:,1:k);
    R_k = R(1:k,:);
    A_k = Q_k*R_k/P; % Multiply by inverse of P (denoted by /P)
    imagesc(A_k);
    y(i) = relative_error_qr(A,A_k);
    i = i+1;
    pause(dt);
end

figure;
semilogy(x,y);

end