a=zeros(255)
for row=28:160
    for col=17:179
        a(row,col)=255;
    end
end
imshow(a);
b=~a
figure,imshow(b);
imwrite(a,'a.jpg');
imwrite(b,'b.jpg');