img = imread("imagens/test_pattern_blurring_orig.tif");
mask3 = ones(3,3)/(3*3);
mask5 = ones(5,5)/(5*5);
mask9 = ones(9,9)/(9*9);
mask15 = ones(15,15)/(15*15);
mask35 = ones(35,35)/(35*35);

img_filtered3 = imfilter(img, mask3);
img_filtered5 = imfilter(img, mask5);
img_filtered9 = imfilter(img, mask9);
img_filtered15 = imfilter(img, mask15);
img_filtered35 = imfilter(img, mask35);

figure;
subplot(2,3,1); imshow(img); title('Original');
subplot(2,3,2); imshow(img_filtered3); title('Filtro 3x3');
subplot(2,3,3); imshow(img_filtered5); title('Filtro 5x5');
subplot(2,3,4); imshow(img_filtered9); title('Filtro 9x9');
subplot(2,3,5); imshow(img_filtered15); title('Filtro 15x15');
subplot(2,3,6); imshow(img_filtered35); title('Filtro 35x35');
