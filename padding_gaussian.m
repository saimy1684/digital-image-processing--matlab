a= [ 1 2 2 2 23 25 0;
    1 2 5 9 22 25 0;
    5 8 6 7 22 24 18;
    0 0 2 0 5 8 11;
    7 8 15 19 25 0 0;
    8 5 14 7 12 9 0;
    1 5 8 0 0 7 7];
b=[1 2 1;2 4 2;1 2 1];
[m,n]=size(a);
[x,y]=size(b);
h=m+2*x-2;
g=n+2*y-2;
u=0;

c=zeros(h,g);
for i=1:m
    for j=1:n
c(i+1,j+1)=a(i,j);
    end
end
d=zeros(h,g);
    
for q=0:5
    for z=0:5
    for i= 1:3
        for j= 1:3
        u= u+ b(i,j)*c(i+q,j+z);
        end
    end
    
    d(i-1+q,j-1+z)=uint8(u/9);
    u=0;
    end
end
q=zeros(m,n);
for i=1:m
    for j=1:n
        q(i,j)=d(i+1,j+1);
    end
end
a=a
q=q