a=zeros(255)
for row=10:170
    for col=44:180
        a(row,col)=255;
    end
end
imshow(a);
b=zeros(255)
for row=110:243
    for col=127:170
        b(row,col)=255;
    end
end
figure,imshow(b);
xo=a&b
figure,imshow(xo);
imwrite(a,'a.jpg');
imwrite(b,'b.jpg');
imwrite(xo,'xo.jpg');