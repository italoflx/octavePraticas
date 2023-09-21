clear all
close all

im = imread('lake.png');

figure('name', 'Imagem normal')
imshow(im)

valores = imhist(im);
histograma(1,:) = valores(:,1);

inicioHist = 0;
fimHist = 0;

for i=1 : size(histograma,2)
  if histograma(i) != 0
    inicioHist = i
    break;
  end
end

for i=size(histograma,2) : -1 : 1
  if histograma(i) != 0
    fimHist = i
    break;
  end
end

largura = fimHist - inicioHist + 1;
passo = ceil(256 / largura);

novoHist = uint8(zeros(1,256));

j=1;
for i=inicioHist : fimHist
  novoHist(j) = i;
  j += passo;
end

novaIm = im;
for i=1 : size(novaIm, 1)
  for j=1 : size(novaIm, 2)
    for z=1 : size(novoHist,2)
      if novaIm(i,j) == novoHist(z)
        novaIm(i,j) = z;
      end
    end
  end
end

figure('name', 'Imagem alargada')
imshow(novaIm)
