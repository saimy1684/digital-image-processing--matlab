a=zeros(255)
for row=18:170
    for col=18:149
        a(row,col)=255;
    end
end
imshow(a);
b=zeros(255)
for row=118:222
    for col=140:170
        b(row,col)=255;
    end
end
figure,imshow(b);
inter=a&b
figure,imshow(inter);