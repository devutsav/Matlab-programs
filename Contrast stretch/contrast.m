imr=imread('/home/utsav/original.png');
h1=zeros(1,256);
h2=zeros(1,256);
[row,col]=size(imr);
e=imr;
imr=double(imr);
lmin=0; 
lmax=255; 
mmin=min(imr(:)); 
mmax=max(imr(:)); 

for i=1:row
    for j=1:col
        e(i,j)=((imr(i,j)-mmin)*((lmax-lmin)/(mmax-mmin))) + lmin;
        e(i,j)=ceil(e(i,j));
    end
end

for i=1:row
    for j=1:col
        h1(imr(i,j)+1)=h1(imr(i,j)+1)+1;
        h2(e(i,j)+1)=h2(e(i,j)+1)+1;
    end
end
subplot(2,2,1), plot(uint8(h1));
title("Original");
subplot(2,2,2), plot(uint8(h2));
title("After Contrast Stretching");
subplot(2,2,3), imshow(uint8(imr));
title("Original");
subplot(2,2,4), imshow(uint8(e));
title("After Contrast Stretching");


