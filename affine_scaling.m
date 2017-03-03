a= zeros(255);
for i= 10:130
for j= 12:130
a(i,j)=1;
end 
end

b = zeros(255);
x=2;
y=2;
aff = [x,0,0;0,y,0;0,0,1];

for  i=1:255
    for j=1:255
        k = [i,j,1]*aff;
        k= uint8(k);
        if k(1)<=255 && k(1)>0 && k(2)<=255 && k(2)>0
            b(k(1),k(2))=a(i,j);
        end
    end
end
imshow(a);
figure,imshow(b);
