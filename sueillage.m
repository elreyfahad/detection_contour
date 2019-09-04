function [res]=sueillage(img,s)

   X=img;
   [a b c]=size(X);
   if c~=1
       X=rgb2gray(X);
   end
   
   for i=1:a
       for j=1:b
           
           if X(i,j) < s
               
               res(i,j)=0;
           else
               res(i,j)=255;
           end
           
       end
   end
   
   
  figure;
  subplot(1,2,1),imshow(X),title('image Original');
  subplot(1,2,2),imshow(res),title(['image avec un niveau de seuillage ',num2str(s)]);


end