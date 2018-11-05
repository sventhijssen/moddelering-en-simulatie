% Opdracht 3
% Load image
load Agrigento.mat;

% Display image in gray scale
figure;
colormap gray;
imagesc(Z);

% Opdracht 4
% SVD met lagerangbenadering                                                                                                                        
animate_svd(Z, 0.1, 10, 10, 200);

% Opdracht 5
% QR met lagerangbenadering
animate_qr(Z, 0.1, 10, 10, 200);