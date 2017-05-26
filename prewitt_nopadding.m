a=imread('D:\dip matlab\Filter\moon.jpg');
imshow(a);
imwrite(a,'input.jpg');
a=double(a);
x = [-1 -1 -1;0 0 0; 1 1 1];
y = [-1 0 1;-1 0 1; -1 0 1];


[row,col] = size(a);
gx = zeros(row,col);
gy = zeros(row,col);
g = zeros(row,col);
for i=1 : row
    for j=1 : col
        if j==1 || i==1 || i== row || j==col
            g(i,j) = a(i,j);
         
         end
   end
end
for i=2 : row-2
    for j=2 : col-2
        
        
            
            gx(i,j) = (a(i-1,j-1)* x(1,1) + a(i-1,j) * x(1,2) +  a(i,j+1) * x(2,3) + a(i,j-1) * x(2,1) + a(i,j)* x(2,2) + a(i-1,j+1)*x(1,3) +a(i+1,j-1) * x(3,1) + a(i+1,j)* x(3,2) + a(i+1,j+1)* x(3,3));
           
        
   end
end
for i=2 : row-2
    for j=2 : col-2
        
            gy(i,j) = (a(i-1,j-1)* y(1,1) + a(i-1,j) * y(1,2) +  a(i,j+1) * y(2,3) + a(i,j-1) * y(2,1) + a(i,j)* y(2,2) + a(i-1,j+1)*y(1,3) +a(i+1,j-1) * y(3,1) + a(i+1,j)* y(3,2) + a(i+1,j+1)* y(3,3));
       
   end
end
g=abs(gx)+abs(gy);
g=uint8(g);

figure,imshow(g);

imwrite(g,'output.jpg');
