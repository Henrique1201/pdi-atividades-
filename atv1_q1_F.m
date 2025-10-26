img = imread("imagens/test_pattern_blurring_orig.tif");

img_filtered3 = medfilt2(img, [3 3]);
img_filtered5 = medfilt2(img, [5 5]);
img_filtered9 = medfilt2(img, [9 9]);
img_filtered15 = medfilt2(img, [15 15]);
img_filtered35 = medfilt2(img, [35 35]);

figure;
subplot(2,3,1); imshow(img); title('Original');
subplot(2,3,2); imshow(img_filtered3); title('Mediana 3x3');
subplot(2,3,3); imshow(img_filtered5); title('Mediana 5x5');
subplot(2,3,4); imshow(img_filtered9); title('Mediana 9x9');
subplot(2,3,5); imshow(img_filtered15); title('Mediana 15x15');
subplot(2,3,6); imshow(img_filtered35); title('Mediana 35x35');
