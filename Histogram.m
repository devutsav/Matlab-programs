%Histogram with averaging filter (masking)
a=imread('C:\Users\Public\Pictures\Sample Pictures\koala.jpg');
b=rgb2gray(a);
[row,col]=size(b);
%imtool(b);
arr=zeros(1,256);
for k=1:256
    count=0;
    for i=1:row
        for j=1:col
            if k == b(i,j)
                count=count+1;
            end
        end
    end
    arr(1,k)=count;
end
%plot(arr);
prob=zeros(1,256);
for k=1:256
    prob(1,k) = arr(k)/786432;
end
 
c1=zeros(1,col);
r1=zeros(row+2,1);
imr=[c1;b;c1];
imr2=[r1,imr,r1];
imtool(imr2);

[r,c]=size(imr2);
imr3=zeros(768,1024);
for i = 2:r-1
    for j = 2:c-1
        sum = 0;
        for i1 = i-1:i+1  
            for j1 = j-1:j+1
                sum = sum + imr2(i1,j1)/9;
            end
        end
        imr(i,j) = sum;
    end
end
imtool(imr2);
 
%q=imfilter(b,3);
%imshow(q);

 
 
 
 
 
    
    
 
 
    

