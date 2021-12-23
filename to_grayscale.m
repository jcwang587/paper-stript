videoFileReader = VideoReader('paperStrip.mp4');
depVideoPlayer = vision.DeployableVideoPlayer;

while hasFrame(videoFileReader)
    videoFrame = readFrame(videoFileReader);
    greyImage = rgb2gray(videoFrame);
    depVideoPlayer(greyImage);
    pause(1/videoFileReader.FrameRate);
end 
release(videoPlayer);


