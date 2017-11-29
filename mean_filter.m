a=imread('/home/utsav/cc.png');
b=rgb2gray(a);
[row,col]=size(b);

c1=zeros(1,col);
r1=zeros(row+2,1);
imr=[c1;b;c1];
imr2=[r1,imr,r1];
imr2=double(imr2);
imr3=zeros(row,col);
imr3=double(imr3);

[r,c]=size(imr2);

for i = 2:r-1
    for j = 2:c-1
        sum = 0;
        for i1 = i-1:i+1  
            for j1 = j-1:j+1
                sum = sum + imr2(i1,j1)/9;
            end
        end
        imr3(i,j) = sum;
    end
end
subplot(2,2,1),imshow(uint8(b));
title('Original image');
subplot(2,2,2),imshow(uint8(imr3));
title('Mean filtered');
