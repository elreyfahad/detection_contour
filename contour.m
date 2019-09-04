function contour(img,s)

 X=imread(img);
 [a b c]=size(X);
 if c~=1
    X=rgb2gray(X);
 end
  
 res = edge(X,'log',s,5);
 
 
 figure;
  subplot(1,2,1),imshow(X),title('image Original');
  subplot(1,2,2),imshow(res),title(['image avec un niveau de seuillage ',num2str(s)]);
end