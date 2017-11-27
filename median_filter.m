b=imread('/home/utsav/b.jpg');
b=double(b);
%b=rgb2gray(a);
%m = imnoise(b,'salt & pepper',0.5);
[row,col]=size(b);

c1=zeros(1,col);
r1=zeros(row+2,1);
imr=[c1;b;c1];
imr2=[r1,imr,r1];
imr2=double(imr2);

[r,c]=size(imr2);
imr4=zeros(1,9);
cz=zeros(1,9);
[rw,cl]=size(imr4);
imr5=zeros(r,c);
for i = 2:r-1
    for j = 2:c-1
        k=1;
        for i1 = i-1:i+1  
            for j1 = j-1:j+1
                imr4(1,k)=imr2(i1,j1);
                k=k+1;
            end
        end
       cz=sort(imr4);
       imr5(i-1,j-1)=cz(1,5);
    end
end
subplot(2,2,1), imshow(uint8(b));
title('Original image');
subplot(2,2,2), imshow(uint8(imr5));
title('Median filtered image');
x=medfilt2(imr2);
subplot(2,2,3), imshow(uint8(x));
