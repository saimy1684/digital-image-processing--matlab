a = imread('D:\dip matlab\flower.jpg');
a = rgb2gray(a);
[x,y] = size(a);
imshow(a);
for r = 1:x
    for c = 1:y
        a(r,c) = a(r,c)+ 60;
    end
end
A= uint8(a);
figure,imshow(A);