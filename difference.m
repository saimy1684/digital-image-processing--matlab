a=zeros(255)
for row=18:170
    for col=46:180
        a(row,col)=255;
    end
end
imshow(a);
b=zeros(255)
for row=127:210
    for col=145:169
        b(row,col)=255;
    end
end
figure,imshow(b);
diff=a-b
figure,imshow(diff);