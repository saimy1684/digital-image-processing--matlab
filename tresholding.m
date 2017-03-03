a=[48 132 69 16 9;76 0 52 79 5;88 63 73 228 44;0 32 66 49 36]
for r =1:4 
    for c=1:5 
        if a(r,c)>=60
            b(r,c)=1
        else b(r,c)=0
        end 
    end
end
imshow(a);
figure,imshow(b);
imwrite(a,'a.jpg');
imwrite(b,'b.jpg');