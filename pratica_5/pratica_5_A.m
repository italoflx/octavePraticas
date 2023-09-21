close all
clear all

im = imread('cores.jpg');

imCinza = (0.2989 * im(:,:,1) + 0.5870 * im(:,:,2) + 0.1140 * im(:,:,3));

imshow(im)
figure(2)
imshow(imCinza)

figure('name', 'Canal vermelho')
imshow(im(:,:,1))
figure('name', 'Canal verde')
imshow(im(:,:,2))
figure('name', 'Canal azul')
imshow(im(:,:,3))
