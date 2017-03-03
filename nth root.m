a = imread('D:\dip matlab\flower.jpg');
a = rgb2gray(a);
[x,y] = size(a);
imshow(a);
z = zeros(x,y);
a = im2double(a);
for r = 1:x
    for c = 1:y
        z(r,c)=sqrt(a(r,c));
    end
end
figure,imshow(z);
