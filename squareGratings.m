% 1st frequency
x = linspace(0, 12 * pi);
y = sign(cos((2 * pi * x * 0.25) + 2));
y = repmat(y, 100, 1);
imshow(y);
%Trying to rotate all the 12 orientations at the same time 
%Images are not coming up, only one 

allImages = [];
for i = 0:180:15   
    allImages = [allImages,imrotate(y, i, "bicubic", "loose")];
    %imshow(z);
end
imshow(allImages)


%This part is just repetition with the different freqs
% 2nd freq
a = linspace(0, 12 * pi);
b = sign(cos((2 * pi * x * 0.17) + 2));
b = repmat(b, 100, 1);
imshow(b);
c = imrotate(b, -90, "bicubic", "loose");
c = imresize(c, 1, "nearest");
imshow(c);

% 3rd freq
e = linspace(0, 12 * pi);
f = sign(cos((2 * pi * x * 0.13) + 2));
f = repmat(f, 100, 1);
imshow(f);
g = imrotate(f, -90, "bicubic", "loose");
g = imresize(g,1,"nearest");
imshow(g);