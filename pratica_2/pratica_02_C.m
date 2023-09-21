clear all;
close all;

% Ler a imagem "lena.jpg"
im = imread('lena.png');

%Nova figura
figure('name', 'Parte 2');
subplot(1, 3, 1);
imshow(im);
title('Imagem Original');

% Criar uma cópia da imagem para o degradê
imDegrade = im;

valor = -256; %metade da quantidade de colunas da matriz
for i=1:size(im,2)
  imDegrade(:,i) = im(:,i)+(valor); %atribui a todas as linhas da matriz (:), em cada coluna i, o valor de (i-1)
  valor = valor + 1;
end

% Exibir a imagem degradê
subplot(1, 3, 2);
imshow(imDegrade);
title('Imagem Degradê');


% Criar uma cópia da imagem para a posterização
imPosterizada = im;

% Aplicar a posterização
for i = 1:size(im, 1)
    for j = 1:size(im, 2)
        if im(i, j) < 85
            imPosterizada (i, j) = 0;  % Nível baixo de intensidade
        elseif im(i, j) < 170
            imPosterizada (i, j) = 127; % Nível médio de intensidade
        else
            imPosterizada (i, j) = 255; % Nível alto de intensidade
        end
     end
end

% Exibir a imagem posterizada
subplot(1, 3, 3);
imshow(imPosterizada);
title('Imagem Posterizada');
imwrite(imPosterizada, 'lena_posterizada.png');
