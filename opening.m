f=imread('D:\dip matlab\Gray images\moon.jpg');
imshow(f);
f=rgb2gray(f);
f=double(f);
[m,n]=size(f);
a=f;
b=zeros(m+2,n+2);
b1=zeros(m+2,n+2);
c=0;
for i=1:m
    for j=1:n
    if a(i,j)>150
        b(i+1,j+1)=1;
    end
    end
end
figure,imshow(b);
y=zeros(3);
x=[0 1 0;1 1 1;0 1 0];
for q=1:m
    for z=1:n
      for i= 1:3
        for j= 1:3
            if x(i,j)==1
            y(i,j)=b(q+i-1,z+j-1)==1;
            end
        end
      end
      if (y&x)==x
               a(q,z)=1;
           else
               a(q,z)=0; 
      end
   end
end

figure,imshow(a);
p=a;
c1=0;
for i=1:m
    for j=1:n
        b1(i+1,j+1)=a(i,j);
    end
end
for q=1:m
    for z=1:n
      for i= 1:3
        for j= 1:3
            if (x(i,j)==1)||(b1(q+i-1,z+j-1)==1)
             c1=c1+1;
            end 
        end
      end
      if(c1>5)
      p(q,z)=1;
           else
      p(q,z)=0;
      end
      c1=0;
   end
end
figure,imshow(p);
imwrite(a,'a.jpg');
imwrite(p,'p.jpg');