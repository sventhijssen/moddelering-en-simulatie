G = transitionMatrix(0.6);

p0 = zeros(17,1);
p0(1) = 1;

game = p0'*G*G;