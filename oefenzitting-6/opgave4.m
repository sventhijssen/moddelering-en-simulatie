figure;
imagesc(Z);
colormap('gray');

X = fft2(Z);

[M, N] = size(X);

% tien kleinste waarden
[MinA, MinI] = maxk(abs(X(2:floor(N/2))), 10);

nulfreq = A(1);

filteredA = zeros(1,N);
filteredA(1) = nulfreq;
filteredA(MinI+1) = A(MinI+1);
filteredA(N-MinI+1) = conj(A(MinI+1));

figure;
imagesc(log(abs(X)));
colormap('gray');

figure;
image(A);