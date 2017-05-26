a = imread('D:\dip matlab\flower.jpg');
a = rgb2gray(a);
[x,y] = size(a);
imshow(a);
k = zeros(x,y);
a = double(a);
for r = 1:x
    for c = 1:y
        k(r,c)=1/(log10(1+a(r,c)));
    end
end
figure,imshow(k);
