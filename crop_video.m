videoFileReader = VideoReader('paperStrip.mp4');
depVideoPlayer = vision.DeployableVideoPlayer;

prompt = 'Start from frame: ';
start = input(prompt);
prompt2 = 'End at frame: ';
ending = input(prompt2);

 for i = start:1:ending
     frame = read(videoFileReader,i); 
     depVideoPlayer(frame);
     pause(1/videoFileReader.FrameRate);
 end
 release(depVideoPlayer);

 disp('Frame count =');
 disp(ending - start);
