function detection_ligne(im)

I = imread(im);
g = edge(I, 'canny', 0.2);
[H, T, R] = hough(g);
P = houghpeaks(H, 6, 'Threshold', 0.1);
lines = houghlines(g,T,R,P,'FillGap',1e4,'MinLength',2);
figure, imshow(I), hold on
max_len = 0;
for k = 1:length(lines)
   xy = [lines(k).point1; lines(k).point2];
   plot(xy(:,1),xy(:,2),'LineWidth',2,'Color','green');

   %Début et fin des tracés
   plot(xy(1,1),xy(1,2),'x','LineWidth',2,'Color','yellow');
   plot(xy(2,1),xy(2,2),'x','LineWidth',2,'Color','red');

   % Déterminez les extrémités du segment de ligne le plus long
   len = norm(lines(k).point1 - lines(k).point2);
   if ( len > max_len)
      max_len = len;
      xy_long = xy;
   end
end
plot(xy_long(:,1),xy_long(:,2),'LineWidth',2,'Color','red');
end
