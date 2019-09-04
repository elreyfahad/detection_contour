function detection_cercle(img)
I = imread(img);
%Ie = edge(I,'canny',0.2,1);

   [a b c]=size(I);
   if c~=1
       I=rgb2gray(I);
   end
imshow(I);
[centers, radii] = imfindcircles(I,[5 40],'ObjectPolarity','dark');
viscircles(centers, radii,'Color','b');

end