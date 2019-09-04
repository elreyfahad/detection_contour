function gradientSobelPrewit(img)
   X=imread(img);
   
   [a b c]=size(X);
   if c~=1
       X=rgb2gray(X);
   end
   
  h1=fspecial('prewitt');%Filtre de rehaussement de bord horizontal Prewit
  h2=fspecial('sobel');%Filtre de rehaussement de bord horizontal Sobel
  
  %Application du filtre de Sobel
  GSx = imfilter(X,h2);%filtrage avec h2 pour obtenir le gradient Horizontal
  GSy=imfilter(X,h2');%filtrage avec la transposé de h2 pour obtenir le gradient Vertical
  
  GS=GSx+GSy; %Calcule de Gradient Sobel
  
  %Application du filtre de Prewit
  GPx = imfilter(X,h1);%filtrage avec h1 pour obtenir le gradient Horizontal
  GPy=imfilter(X,h1');%filtrage avec la transposé de h1 pour obtenir le gradient Vertical
  
  GP=GPx+GPy;%Calcule de Gradient Prewit
  
  sueillage(GP,0.2);
  %sueillage(GS,0.2);

end