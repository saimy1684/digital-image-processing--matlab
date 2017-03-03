a=zeros(255)
for row=19:168
    for col=37:148
        a(row,col)=255;
    end
end
imshow(a);
b=zeros(255)
for row=119:225
    for col=140:189
        b(row,col)=255;
    end
end
figure,imshow(b);
an=a-b
figure,imshow(an);
imwrite(a,'a.jpg');
imwrite(b,'b.jpg');
imwrite(and_not,'an.jpg');