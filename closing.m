a=imread('gray_moon_by_ll_black_star_ll-d6hk9vf.jpg');
imshow(a);
a=rgb2gray(a);
a=double(a);
[m,n]=size(a);
p=a;
b=zeros(m+2,n+2);
for i=1:m
    for j=1:n
    if a(i,j)>200
        b(i+1,j+1)=1;
    end
    end
end
figure,imshow(b);
c=0;
x=[0 1 0;1 1 1;0 1 0];
for q=1:m
    for z=1:n
      for i= 1:3
        for j= 1:3
            if (x(i,j)==1)||(b(q+i-1,z+j-1)==1)
             c=c+1;
            end 
        end
      end
      if(c>5)
      a(q,z)=1;
           else
      a(q,z)=0;
      end
      c=0;
   end
end

figure,imshow(a);
b1=zeros(m+2,n+2);
for i=1:m
    for j=1:n
        b1(i+1,j+1)=a(i,j);
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
            y(i,j)=b1(q+i-1,z+j-1)==1;
            end
        end
      end
      if (y&x)==x
               p(q,z)=1;
           else
               p(q,z)=0; 
      end
   end
end

imwrite(a,'a.jpg');
imwrite(p,'p.jpg');