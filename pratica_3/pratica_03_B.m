clear all;
close all;

im = imread('C:\Users\Ítalo\Pictures\pdi\dance.png');
mask = imread('C:\Users\Ítalo\Pictures\pdi\dance_depth.png');

imhist(mask);

muie = zeros(size(im,1), size(im,2));
omi = zeros(size(im,1), size(im,2));
omiFinal = zeros(size(im,1), size(im,2));
muieFinal = zeros(size(im,1), size(im,2));

for i=1 : size(im,1)
  for j=1 : size(im,2)
    if mask(i,j) > 110 && mask(i,j) < 180
      muie(i,j) = 1;
    end

    if mask(i,j) > 190
      omi(i,j) = 1;
    end


  end
end

figure('name', 'muie')
imshow(muie.*im)

figure('name', 'ome')
imshow(omi.*im)
