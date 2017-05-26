a = imread('D:\dip matlab\Gray images\moon.jpg');
a = rgb2gray(a);
[x,y] = size(a);
b = zeros(x,y);
c = zeros(x,y);
d = zeros(x,y);
e = zeros(x,y);
f = zeros(x,y);
g = zeros(x,y);
h = zeros(x,y);
l = zeros(x,y);


for i=1:x
    for j=1:y
        k = a(i,j);
        if k >= 128
          b(i,j) = 1;
          k = mod(k,128);
        end
        if k >= 64
           c(i,j) = 1;
           k = mod(k,64);
        end
        if k >= 32
          d(i,j) = 1;
          k = mod(k,32);
        end
        if k >= 16
           e(i,j) = 1;
           k = mod(k,16);
        end
        if k >= 8
           f(i,j) = 1;
           k = mod(k,8);
        end
        if  k>=4
           g(i,j) = 1;
           k = mod(k,4);
        end
        if k >= 2
           h(i,j) = 1;
           k = mod(k,2);
        end
        if k >= 1
           l(i,j) = 1;
           k = mod(k,1);
        end       
    end
end

imshow(a);
figure,imshow(b);
figure,imshow(c);
figure,imshow(d);
figure,imshow(e);
figure,imshow(f);
figure,imshow(g);
figure,imshow(h);
figure,imshow(l);

