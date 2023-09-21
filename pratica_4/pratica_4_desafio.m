close all
clear all

mask2 = logical(imread('mask_2.tif'));
mask3 = imread('mask_3.tif');

im = mask2.*mask3;
imshow(im);
