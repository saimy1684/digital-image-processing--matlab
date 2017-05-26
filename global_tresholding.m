a=imread('D:\dip matlab\Gray images\moon.jpg');
a=rgb2gray(a);
[m,n]=size(a);
sum1=0;
sum2=0;
c1class = zeros(m,n);
c2class = zeros(m,n);

c1=0;
c2=0;

%To = mean(mean(a));
 To =128;
 T = 0; % put appropriate initialization
k = abs(To - T );

while k >=5 % check this condition
%for z=1:4
  for i=1:m
    for j=1:n
        if a(i,j)< To
            c1class(i,j)=a(i,j);
            c1=c1+1;
        end
        if a(i,j)> To
            c2class(i,j)=a(i,j);
            c2=c2+1;
        end
    end
  end
  sum1=sum(sum(c1class));
  sum2=sum(sum(c2class));
currentmean = (sum1/c1) + (sum2/c2);
currentmean1= currentmean/2;
T = To;
To = currentmean1;
k = abs(To - T );
sum1=0;
sum2=0;
c1=0;
c2=0;
end
b=zeros(m,n);

%b=uint8(b);
for i =1:m
    for j=1:n 
        if a(i,j)>=To
            b(i,j)=1;
        else b(i,j)=0;
        end 
    end
end
imshow(a);
figure,imshow(b);