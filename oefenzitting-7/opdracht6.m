Gr = reducedTransitionMatrix(G);
[U, D] = eig(Gr);

p0 = zeros(1,5);
p0(1) = 1;

% duurt lang :(
P = U*D^(1000)*inv(U);

while norm(p0) > eps
    p0 = p0*P;
end

disp(p0);