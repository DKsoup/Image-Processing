function [BW,maskedRGBImage] = createMask(RGB)

I = RGB;

channel1Min = 0.000;
channel1Max = 58.000;

channel2Min = 0.000;
channel2Max = 68.000;

channel3Min = 0.000;
channel3Max = 50.000;


sliderBW = (I(:,:,1) >= channel1Min ) & (I(:,:,1) <= channel1Max) & ...
    (I(:,:,2) >= channel2Min ) & (I(:,:,2) <= channel2Max) & ...
    (I(:,:,3) >= channel3Min ) & (I(:,:,3) <= channel3Max);
BW = sliderBW;


maskedRGBImage = RGB;


maskedRGBImage(repmat(~BW,[1 1 3])) = 0;

end
