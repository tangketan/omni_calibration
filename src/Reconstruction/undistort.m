function imout = undistort( im, param, f, hnew, wnew, method, cams)
if nargin<5, cams=1; end

[h,w,cc] = size(im);
yc = hnew/2;
xc = wnew/2;
z = -f;

[x,y] = meshgrid(1:wnew, 1:hnew);
n = length(x(:));
M = [x(:)'-xc;y(:)'-yc;z*ones(1, n)];

m = reprojection(param, M, method, cams);
[x,y] = meshgrid(1:w, 1:h);
imout = interp2(x,y,double(im), m(1:n), m(1+n:2*n));
imout = reshape(uint8(imout), hnew,wnew);