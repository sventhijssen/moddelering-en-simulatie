function [G] = transitionMatrix(alpha)
%TRANSITIONMATRIX Returns the transition matrix for a tennis
%game between two players A and B where alpha is the
%probability that player A scores.
G = zeros(17, 17);

G(1,2) = alpha;
G(2,3) = alpha;
G(3,4) = alpha;
G(4,16) = alpha;

G(1,5) = 1-alpha;
G(2,6) = 1-alpha;
G(3,7) = 1-alpha;
G(4,8) = 1-alpha;

G(5,6) = alpha;
G(6,7) = alpha;
G(7,8) = alpha;
G(8,16) = alpha;

G(5,9) = 1-alpha;
G(6,10) = 1-alpha;
G(7,13) = 1-alpha;
G(8,14) = 1-alpha;

G(9,10) = alpha;
G(10,13) = alpha;
G(13,14) = alpha;
G(14,16) = alpha;

G(9,11) = 1-alpha;
G(10,12) = 1-alpha;
G(13,15) = 1-alpha;
G(14,13) = 1-alpha;

G(11,12) = alpha;
G(12,15) = alpha;
G(15,13) = alpha;

G(11,17) = 1-alpha;
G(12,17) = 1-alpha;
G(15,17) = 1-alpha;

G(16,16) = 1;
G(17,17) = 1;
end

