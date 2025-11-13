img = imread("../imagens/test_pattern_blurring_orig.tif");
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

imwrite(img_filtered3, "../imagens/media_3x3.tif");
imwrite(img_filtered5, "../imagens/media_5x5.tif");
imwrite(img_filtered9, "../imagens/media_9x9.tif");
imwrite(img_filtered15, "../imagens/media_15x15.tif");
imwrite(img_filtered35, "../imagens/media_35x35.tif");

figure;
subplot(2,3,1); imshow(img); title('Original');
subplot(2,3,2); imshow(img_filtered3); title('Media 3x3');
subplot(2,3,3); imshow(img_filtered5); title('Media 5x5');
subplot(2,3,4); imshow(img_filtered9); title('Media 9x9');
subplot(2,3,5); imshow(img_filtered15); title('Media 15x15');
subplot(2,3,6); imshow(img_filtered35); title('Media 35x35');
