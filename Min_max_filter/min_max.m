%min filter and maxx filter in matlab
b=imread('/home/utsav/b.jpg');
[r,c]=size(b);
m=zeros(r,c);
m=b;
m=double(m);
rpad=zeros(1,c);
colp=zeros(r+2,1);
imr = [rpad;b;rpad];
imr1 = [colp,imr,colp];
imr1=double(imr1);
[row,col]=size(imr1);
imr2=zeros(row,col);
imr3=zeros(row,col);
imr3=double(imr3);
imr2=double(imr2);
for i=2:row-1
    for j=2:col-1
        subim=imr1(i-1:i+1,j-1:j+1);
        imr2(i-1,j-1)=max(subim(:));
        imr3(i-1,j-1)=min(subim(:));
    end
end

subplot(2,3,1),imshow(uint8(m));
title('Original image');
subplot(2,3,2),imshow(uint8(imr2));
title('Max filtered');
subplot(2,3,3),imshow(uint8(imr3));
title('Min filtered');

% CHECK USING  B = ordfilt2(a,9,ones(3,3)); FOR MAX AND  B = ordfilt2(a,1,ones(3,3)); FOR MIN
