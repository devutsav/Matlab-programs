b = imread('/home/utsav/b.jpg');
%b=rgb2gray(a);

[row,col]=size(b);

c1=zeros(1,col);
r1=zeros(row+2,1);
imr=[c1;b;c1];
imr2=[r1,imr,r1];
imr3=[r1,imr,r1];
imr3=zeros(258,258);

mask=[-1 -2 -1 ; 0 0 0 ; 1 2 1];

[r,c]=size(imr2);


for i = 2:r-1
    for j = 2:c-1
        
        for i1 = -1:1 
            for j1 = -1:1
                val=0;
                val = imr2(i+i1,j+j1)*mask(i1+2,j1+2);
                imr3(i+i1,j+j1)=val;
               
            end
        end
       
    end
end

subplot(2,2,1), imshow(b);
subplot(2,2,2), imshow(imr3);
