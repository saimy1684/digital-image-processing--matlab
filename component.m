a=[ 1 1 1 0 1 ; 0 1 1 0 0 ; 0 0 0 0 0; 1 1 1 0 1; 0 0 0 1 1]
[x,y]= size(a);
b=zeros(x,y);
label=1;
array = zeros(10,2);
n =1;
m =1;
if a(1,1)==1
   b(1,1)=label;
end
for i= 2:y
    if a(1,i)==1 && a(1,i-1)==1
         
            b(1,i)=b(1,i-1);
            elseif a(1,i)==1
        label=label+1;
        b(1,i)=label;
        
    end
end
for i= 2:x
    if a(i,1)==1 && a(i-1,1)==1
         
            b(i,1)=b(i-1,1);
    elseif a(i,1)==1
        label=label+1;
        b(i,1)=label;
    
    end
end
for i=2:x
    for j=2:y
        
        if a(i,j) == 1
            if b(i-1,j)== b(i,j-1) && a(i-1,j)==1 
               b(i,j) = b(i-1,j);
            elseif b(i-1,j) == b(i,j-1) && a(i-1,j)==0
              label= label+1;
                b(i,j)=label;
            elseif a(i-1,j)~=0 && a(i,j-1)==0
                b(i,j)=b(i-1,j);
            elseif a(i,j-1)~=0 && a(i-1,j)==0
                b(i,j)=b(i,j-1);
            else
              b(i,j)= b(i-1,j);
              array(m,n)= b(i-1,j);
              array(m,n+1) = b(i,j-1);  
               m=m+1;
               n=n+1;
            end
            
        end
    end
end

for i = 1 : m-1
    for j=1:n-1
        for k =1 : x
            for z = 1:y
                if b(k,z)== array(i,j)
                    b(k,z)=array(i,j+1);
                end
            end
        end
    end
end


            