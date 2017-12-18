clear;
clc;

fol = '/home/morris/workspace/coroma/input';

cd(fol);

my_files = dir('*.txt');

for c = 1:(numel(my_files)/2)
    depthinputfile = strcat(int2str(c-1), '_depth_frame.txt');
    rgbinputfile = strcat(int2str(c-1), '_rgb_frame.txt');
    depthoutputfile = strcat('../depth/depth', sprintf('%05d',c-1), '.png');
    rgboutputfile = strcat('../rgb/image', sprintf('%05d',c-1), '.png');
   
    depthdata = importdata(depthinputfile);
    rgbdata = importdata(rgbinputfile);
    
    ddreshaped = reshape(depthdata, [640,480]);
    depthImage = rot90(ddreshaped,3);
    normalizedImage = uint8(255*mat2gray(depthImage));
    depthImageUint16 = uint16(depthImage);
    imwrite(depthImageUint16,depthoutputfile);

    x = rgbdata(:,1); 
    y = rgbdata(:,2);
    z = rgbdata(:,3);
    xreshaped = reshape(x, [640,480]);
    yreshaped = reshape(y, [640,480]);
    zreshaped = reshape(z, [640,480]);
    rgbImage = cat(3, xreshaped, yreshaped, zreshaped);
    rgbImage = rot90(rgbImage,3);
    rgbImage = double(rgbImage) / 255;
    imwrite(rgbImage,rgboutputfile);
    
    imshow(normalizedImage);
    imshow(rgbImage);
end