A=imread('D:\dip matlab\flower.jpg');

[x ,y] = size(A);
C=double(A);
for i = 1:x
    for j= 1:y
        D(i,j)= 10*log(1+C(i,j));  
    end 
end
imshow(A)
figure,imshow(C)
