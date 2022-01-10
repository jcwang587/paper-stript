%% Clear variables
clear;
clc;

%% Parameters
frameidx = 4500;

%% Load video
v = VideoReader('test.mp4');
disp('Height (pixels) =');
disp(v.Height);
disp('Width (pixels) =');
disp(v.Width)

frame = read(v,frameidx);
greyImage = rgb2gray(frame);
imshow(greyImage)
imwrite(greyImage,'plot.jpg')

[centers, radii, metric] = imfindcircles(greyImage,[10 30]);

viscircles(centers, radii,'EdgeColor','b');

diff = [];
for i=1:width
    for j=1:height
        diff(i,j) = greyImage(i,j) - greyImage(i,j+1);
    end
end
