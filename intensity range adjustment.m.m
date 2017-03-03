f=[1 2 3;-1 -2 -4;6 -4 8];
k=255;
a=f-min(min(f))
l=max(max(f))
b=k*(a/l)
b=int16(b)