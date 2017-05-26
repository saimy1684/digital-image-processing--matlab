a = imread('D:\dip matlab\flower.jpg');
a = rgb2gray(a);
[r,c] = size(a);
imshow(a);
Z1 = zeros(r,c);
Z2 = zeros(r,c);
a = im2double(a);
con = 2;
g1 = 0.7;
g2 = 2;
for r = 1:r
    for c = 1:c
        Z1(r,c)=con*(a(r,c)^g1);
        Z2(r,c)=con*(a(r,c)^g2);
    end
end
figure,imshow(Z1);
figure,imshow(Z2);