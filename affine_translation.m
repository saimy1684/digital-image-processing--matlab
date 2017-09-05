a= zeros(255);
for i= 60:120
for j= 60:120
a(i,j)=1;
end 
end

b = zeros(255);
x=20;
y=20;
aff = [1,0,0;0,1,0;x,y,1];

for  i=1:255
    for j=1:255
        k = [i,j,1]*aff
        if k(1)<=255 && k(1)>0 && k(2)<=255 && k(2)>0
            b(k(1),k(2))=a(i,j);
        end
    end
end
imshow(a);
figure,imshow(b);
