 a = imread('D:\dip matlab\flower.jpg');
imshow(a);
amini = min(a(:));
amaxi = max(a(:));
z= (a-amini).*(255/(amaxi-amini));
figure,imshow(z);