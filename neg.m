a=imread('/home/utsav/einstein.jpg');
c=rgb2gray(a);
b=rgb2gray(a);
[row,col]=size(b);

for i=1:row
    for j=1:col
        b(i,j)= 255-b(i,j);
    end
end
subplot(2,2,1), imshow(c);
subplot(2,2,2), imshow(b);
