
close all
%Im = imread('C:\Users\Edmundo\Documents\Github Projects\ANPR\cochesconplacas8.jpg');
%Im = imread('C:\Users\Edmundo\Documents\Github Projects\ANPR\cochesconplacas9.jpg');
%Im = imread('C:\Users\Edmundo\Documents\Github Projects\ANPR\cochesconplacas10.jpg');
%Im = imread('C:\Users\Edmundo\Documents\Github Projects\ANPR\cochesconplacas11.jpg');
%Im = imread('C:\Users\Edmundo\Documents\Github Projects\ANPR\cochesconplacas12.jpg');
%Im = imread('C:\Users\Edmundo\Documents\Github Projects\ANPR\cochesconplacas13.jpg');
Im = imread('C:\Users\Edmundo\Documents\Github Projects\ANPR\cochesconplacas14.jpg');
%Im = imread('C:\Users\Edmundo\Documents\Github Projects\ANPR\cochesconplacas15.jpg');

figure;imshow(Im);
title('imagen original');

ImGS = rgb2gray(Im);
figure;imshow(ImGS);
title('imagen en escala de grises');

Ibw = imbinarize(ImGS,graythresh(ImGS)+0.1);
figure;imshow(Ibw);
title('imagen binarizada');

minpix = 275; 
maxpix = 750;
Iarea = xor(bwareaopen(Ibw,minpix),bwareaopen(Ibw,maxpix));
Ifinal = logical(Iarea);
figure;imshow(Ifinal);
title('reduccion de elementos muy grandes y muy peque?os')

stat = regionprops(Ifinal,'boundingbox');
imshow(Ifinal); hold on;

      
for k = 1 : numel(stat)
    bb = stat(k).BoundingBox;
    bb1 = rectangle('position',[bb(1),bb(2),bb(3),bb(4)],'edgecolor','r','linewidth',2);
end


bbA = stat(1).BoundingBox;
bbB = stat(2).BoundingBox;
bbC = stat(3).BoundingBox;
bbD = stat(4).BoundingBox;
bbE = stat(5).BoundingBox;

SE1 = strel('disk',1);

IMA = Im(bbA(2):bbA(2)+bbA(4),bbA(1):bbA(1)+bbA(3));
J1 = imresize(IMA, 2);
J1B = imbinarize(J1);
J1BN = not(J1B);
J1BNE = imerode(J1BN,SE1);
figure;imshow(J1BNE);

IMB = Im(bbB(2):bbB(2)+bbB(4),bbB(1):bbB(1)+bbB(3));
J2 = imresize(IMB, 2);
J2B = imbinarize(J2);
J2BN = not(J2B);
J2BNE = imerode(J2BN,SE1);
figure;imshow(J2BNE);

IMC = Im(bbC(2):bbC(2)+bbC(4),bbC(1):bbC(1)+bbC(3));
J3 = imresize(IMC, 2);
J3B = imbinarize(J3);
J3BN = not(J3B);
J3BNE = imerode(J3BN,SE1);
figure;imshow(J3BN);

IMD = Im(bbD(2):bbD(2)+bbD(4),bbD(1):bbD(1)+bbD(3));
J4 = imresize(IMD, 2);
J4B = imbinarize(J4);
J4BN = not(J4B);
J4BNE = imerode(J4BN,SE1);
figure;imshow(J4BNE);

IME = Im(bbE(2):bbE(2)+bbE(4),bbE(1):bbE(1)+bbE(3));
J5 = imresize(IME, 2);
J5B = imbinarize(J5);
J5BN = not(J5B);
J5BNE = imerode(J5BN,SE1);
figure;imshow(J5BNE);

[L1,n1] = bwlabel(J1BNE);
[L2,n2] = bwlabel(J2BNE);
[L3,n3] = bwlabel(J3BNE);
[L4,n4] = bwlabel(J4BNE);
[L5,n5] = bwlabel(J5BNE);
SE = strel('disk',1);
imshow(ImGS); hold on;
if n1 > 10 
    bb = stat(1).BoundingBox;
    bb1 = rectangle('position',[bb(1),bb(2),bb(3),bb(4)],'edgecolor','r','linewidth',2);
end
if n2 > 10
    bb = stat(2).BoundingBox;
    bb1 = rectangle('position',[bb(1),bb(2),bb(3),bb(4)],'edgecolor','r','linewidth',2);
end
if n3 > 10
    bb = stat(3).BoundingBox;
    bb1 = rectangle('position',[bb(1),bb(2),bb(3),bb(4)],'edgecolor','r','linewidth',2);
end
if n4 > 10
    bb = stat(4).BoundingBox;
    bb1 = rectangle('position',[bb(1),bb(2),bb(3),bb(4)],'edgecolor','r','linewidth',2);
    J4BNEN = imresize(J4BNE,2);
end
if n5 > 10
    bb = stat(5).BoundingBox;
    bb1 = rectangle('position',[bb(1),bb(2),bb(3),bb(4)],'edgecolor','r','linewidth',2);
end

n1
n2
n3 
n4
n5








