% Opdracht 3
% Load image
load Agrigento.mat;
colormap gray;
imagesc(Z);
pause(1);

% Opdracht 4
% SVD met lagerangbenadering
% animate_svd(Z, 0.1, 1, 1, 200);
% pause(1);
animate_svd(Z, 0.1, 10, 10, 200);