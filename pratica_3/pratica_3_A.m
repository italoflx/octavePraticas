clear all
close all

im = imread('moon.png');

limiar = uint8(input('Digite aqui pae: '))

imBinarizada = im;

for i=1 : size(imBinarizada,1)
  for j=1 : size(imBinarizada,2)
    if(imBinarizada(i,j) > limiar)
      imBinarizada(i,j) = 255;
    else
      imBinarizada(i,j) = 0;
    end
  end
end

figure('name', 'binarizada')
imshow(imBinarizada)

imNegativa = im;

for i=1 : size(imNegativa,1)
  for j=1 : size(imNegativa,2)
    imNegativa(i,j) = 255 - imNegativa(i,j) ;
  end
end

figure(2)
imshow(imNegativa)

imFinal = imNegativa;

for i=1 : size(imBinarizada,1)
  for j=1 : size(imBinarizada,2)
    if(imBinarizada(i,j) == 255)
      imFinal(i,j) = imFinal(i,j) ^ 1.3;
    end
  end
end

figure('name', 'imFinal')
imshow(imFinal)
