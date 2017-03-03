A=imread('D:\dip matlab\flower.jpg');

[x ,y] = size(A);
for i = 1:x
    for j= 1:y
        D(i,j)= 255-A(i,j);  
    end 
end
imshow(A)
figure,imshow(D)
