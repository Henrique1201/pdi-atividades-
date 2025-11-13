pkg load image
clear; clc; close all;

I = imread("../imagens/img_prova.tif");

T1 = graythresh(I);
BW1 = im2bw(I, T1);
[counts, ~] = imhist(I);
maxValueHist = max(counts);

fig1 = figure(1);
subplot(1,3,1), imshow(I), title('Original');
subplot(1,3,2), imhist(I), ylim([0 maxValueHist]), title('Histograma original');
subplot(1,3,3), imshow(BW1), title('Segmentação direta');

print(fig1, "figura_segmentacao_direta.png", "-dpng");

lapKernel = fspecial("laplacian", 0.2);
lapImage = imfilter(double(I), lapKernel, 'replicate');
lapAbs = abs(lapImage);

T_lap = prctile(lapAbs(:), 0.0006);
mask = lapAbs > T_lap;

img_bordas = uint8(double(I) .* mask);

nonzero_pixels = img_bordas(img_bordas > 0);
[counts_bordas, ~] = imhist(nonzero_pixels);
maxValueHistBordas = max(counts_bordas);

T2 = graythresh(double(img_bordas));
BW2 = im2bw(double(img_bordas)/255, T2);

fig2 = figure(2);
subplot(1,3,1), imshow(img_bordas), title('Imagem com bordas');
subplot(1,3,2), imhist(nonzero_pixels), ylim([0 maxValueHistBordas]), title('Histograma bordas');
subplot(1,3,3), imshow(BW2), title('Segmentação melhorada');

print(fig2, "figura_segmentacao_melhorada.png", "-dpng");

imwrite(BW2, "segmentacao_melhorada.png");
