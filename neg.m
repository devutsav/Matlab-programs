b=imread('/home/utsav/img1.jpg');

[row,col,z]=size(b);
c=zeros(row,col,z);
c=b;
for i=1:row
    for j=1:col
        for k=1:z
         b(i,j,k)= 255-b(i,j,k);
        end
    end
end
subplot(2,2,1), imshow(c);
title('Original');
subplot(2,2,2), imshow(b);
title('Negative');
