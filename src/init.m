function opts = init()
% returns root_dir, adds path if no output specified

% ADAPT PATH TO TOOLBOX
opts.root_dir = 'F:\work\calib_fisheye\omni_calibration';

opts.opencv_lib_dir = 'D:\OpenSource\opencv\build\x64\vc10\lib';
opts.opencv_inc_dir = 'D:\OpenSource\opencv\build\include';
opts.opencv_version = '2411';

% To calculate deviations = 1 (only possible with Linux) else 0
opts.deviations = 0;                  
            
% only applied once at the beginning
if nargout==0
  %mkdir(opts.filename);   
  addpath(genpath(sprintf('%s/src',opts.root_dir)));
end 
