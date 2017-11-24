a=imread('/home/utsav/b.jpg');
b=rgb2gray(a);
[row,col]=size(b);
r1=zeros(256,256);
r2=zeros(256,256);
t=200;
count1=0;
count2=0;
sum1=0;
sum2=0;
diff=70;
while(lt(diff,100))
    for i=1:row
        for j=1:col
              if gt(b(i,j),t)
                  r1(i,j)=b(i,j);
                  count1=count1+1;
              end
              if lt(b(i,j),t)
                 r2(i,j)=b(i,j);
                 count2=count2 + 1;
              end
        end
    end
    for i=1:256
        for j=1:256
            sum1=sum1+r1(i,j);
            sum2=sum2+r2(i,j);
        end
    end
    mean1=sum1/count1;
    mean2=sum2/count2;
    avg=(mean1+mean2)/2;
    
    diff=abs(avg-t);
            
end

subplot(2,2,1), imshow(b);
subplot(2,2,2), imshow(r1);
subplot(2,2,3), imshow(r2);
