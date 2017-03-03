x = zeros(255);
for m = 25:60
    for n = 25:60
        x(m, n) = 1;
    end
end
imshow(x)
imwrite(x,'output.jpg')