clear all
close all

im = imread('fractal.png');

im2 = zeros(size(im,1),size(im,2));

imSaida = zeros(size(im,1),size(im,2));

for i=1 : 8
  im2 = bitget(im, i);
  subplot(2, 4, i);
  imshow(im2);
end

imSaida = bitget(im, 7) + bitget(im, 8);
figure('name', 'Saida final');
imshow(imSaida)
