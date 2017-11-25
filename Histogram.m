a=imread('C:\Users\Public\Pictures\Sample Pictures\koala.jpg');
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
plot(arr);
