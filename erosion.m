a=imread('D:\dip matlab\Gray images\moon.jpg');
a=rgb2gray(a);
ne=0;
[x,y]=size(a);
b=zeros(x,y);
u=zeros(x,y);
for i=1:x
    for j=1:x
            if a(i,j)>110
            b(i,j)=1;
            end
    end
end
imshow(b);
k=[0 1 0;1 1 1;0 1 0];
h=x+2;
g=y+2;
c=zeros(h,g);
for i=1:x
    for j=1:y
c(i+1,j+1)=b(i,j);
    end
end
imshow(c);
for q=1:x-1
    for z=1:y-1
       for i= 1:3
        for j= 1:3
        ne= ne+ k(i,j)*c(i+q,j+z);
        end
    end
         if ne==5
             u(i-1+q,j-1+z)=1;
        end
        ne=0;
    end
end
figure,imshow(u);




             
                
             
            
               