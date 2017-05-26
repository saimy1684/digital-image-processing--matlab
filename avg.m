a=imread('D:\dip matlab\Filter\moon.jpg');

b = ones(3);


[row,col] = size(a);
c = zeros(row,col);
for i=1 : row
    for j=1 : col
        if j==1 || i==1 || i== row || j==col
            c(i,j) = a(i,j);
         
        else
            c(i,j) = (a(i-1,j-1)* b(1,1) + a(i-1,j) * b(1,2) +  a(i,j+1) * b(1,3) + a(i,j-1) * b(2,1) + a(i,j)* b(2,2) + a(i,j+1)*b(2,3) +a(i+1,j-1) * b(3,1) + a(i+1,j)* b(3,2) + a(i+1,j+1)* b(3,3))/9;
        end
   end
end
c=int8(c);

