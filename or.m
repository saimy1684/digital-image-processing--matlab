a=zeros(255)
for row=12:160
    for col=28:179
        a(row,col)=255;
    end
end
imshow(a);
b=zeros(255)
for row=110:180
    for col=90:190
        b(row,col)=255;
    end
end
figure,imshow(b);
or=a|b
figure,imshow(or);
