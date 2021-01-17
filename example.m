
%1. Load the image, for example
    image        = imread('image.bmp');
    image        = 0.299 * double(image(:,:,1)) + 0.587 * double(image(:,:,2)) + 0.114 * double(image(:,:,3));
    
%2. Call those function to calculate the quality score:
    load feature;
    f_im         = feature_extract(image);
    qualityscore = BP_Ada(f(:, [1,2,3,4,5,6]), f(:, 7), f_im, 10);
    