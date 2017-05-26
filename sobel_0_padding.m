a=imread('D:\dip matlab\Filter\moon.jpg');
imshow(a);
imwrite(a,'input.jpg');
a=double(a);
x=[-1 -2 -1;0 0 0; 1 2 1];
y = [-1 0 1;-2 0 2; -1 0 1];
[m,n]=size(a);
[x1,y1]=size(x);
h=m+2*x1-2;
g=n+2*y1-2;
u=0;

c=zeros(h,g);
for i=1:m
    for j=1:n
c(i+2,j+2)=a(i,j);
    end
end
d=zeros(h,g);
    
    
for q=0:m+1
    for z=0:n+1
    for i= 1:x1
        for j= 1:y1
        u= u+ x(i,j)*c(i+q,j+z);
        end
    end
    
    d(i-1+q,j-1+z)=u;
    u=0;
    end
end
gx=zeros(m,n);
for i=1:m
    for j=1:n
        gx(i,j)=d(i+1,j+1);
    end
end

e=zeros(h,g);
    
for q=0:m+1
    for z=0:n+1
    for i= 1:3
        for j= 1:3
        u= u+ y(i,j)*c(i+q,j+z);
        end
    end
    
    e(i-1+q,j-1+z)=u;
    u=0;
    end
end
gy=zeros(m,n);
for i=1:m
    for j=1:n
        gy(i,j)=e(i+1,j+1);
    end
end
g=abs(gx)+abs(gy);
g=uint8(g);

figure,imshow(g);

imwrite(g,'output.jpg')