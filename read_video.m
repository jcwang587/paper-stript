videoFileReader = VideoReader('paperStrip.mp4');
depVideoPlayer = vision.DeployableVideoPlayer;
frame_count = 1;
disp('Height (pixels) =');
disp(videoFileReader.Height);
disp('Width (pixels) =');
disp(videoFileReader.Width)

while hasFrame(videoFileReader)
    videoFrame = readFrame(videoFileReader);
    depVideoPlayer(videoFrame);
    pause(1/videoFileReader.FrameRate);
    frame_count = frame_count + 1;
end 
release(depVideoPlayer);

disp('Frame count =');
disp(frame_count);

