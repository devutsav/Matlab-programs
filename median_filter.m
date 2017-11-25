a=imread('/home/utsav/b.png');

b=rgb2gray(a);
%m = imnoise(M,'salt & pepper',0.5);
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

 
c1=zeros(1,col);
r1=zeros(row+2,1);
imr=[c1;b;c1];
imr2=[r1,imr,r1];

[r,c]=size(imr2);
imr4=zeros(1,9);
for i = 2:r-1
    for j = 2:c-1
        k=1;
        for i1 = i-1:i+1  
            for j1 = j-1:j+1
                imr4(1,k)=imr2(i1,j1);
                k=k+1;
            end
        end
       c=sort(imr4);
       imr2(i,j)=c(1,5);
    end
end
imtool(imr2);
