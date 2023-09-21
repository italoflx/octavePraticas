close all
clear all

im = imread('circulo.png');

imCinza = uint8(im);

for i=1 : size(im,1)
  for j=1 : size(im,2)
    if (im(i,j) == 1)
      imCinza(i,j) = 126;
    end
  end
end
figure(1)
imshow(imCinza);

%Questao B

lena = imread('lena.png');

figure(2)
imshow(lena);
lena = lena(:,:) + 80;

figure(3)
imshow(lena);

lena = lena(:,:) - 80;

figure(4)
imshow(lena);

%Pegar dados do usuario

numero = input('Digite um número: ');

lena = lena(:,:) + numero;

figure(5)
imshow(lena)
