a=imread('/home/utsav/einstein.jpg');
l=rgb2gray(a);
b=rgb2gray(a);
[row,col]=size(b);
arr=zeros(1,256);
for k=1:256
    count=0;
    for i=1:row
        for j=1:col
            if k-1 == b(i,j)
                count=count+1;
            end
        end
    end
    arr(1,k)=count;
end

prob=zeros(1,256);
for k=1:256
    prob(1,k) = arr(k)/(row*col);
end

[rw,cl]=size(prob);
hout=zeros(1,256);
k=0;
for j=1:cl
    k = k + prob(1,j);
    hout(1,j)=k;
end
arr1=zeros(1,256);
for i=1:row
    for j=1:col
         b(i,j)=hout(b(i,j)+1)*255;
    end
end
% imtool(b);
% imtool(l);

subplot(2,2,1), imshow(l);
title('Original');
subplot(2,2,2), imshow(b);
title('Histogram equalised');




     
