function circleCoordinates = findCircles(image)
    [BW,maskedRGBImage] = createMask(image);
    [m,n,~] = size(image);
    CC = bwconncomp(BW);
    CCi = zeros([m,n]);
    circleCoordinates=zeros(4,2);
    j = 1;
    for i = 1 : CC.NumObjects
        CCi(CC.PixelIdxList{i}) = 1;
        CCi = imfill( CCi , "holes" );
        stats = regionprops("table",CCi,"MajorAxisLength",'Centroid');
        if stats.MajorAxisLength < 60 && stats.MajorAxisLength >40
            circleCoordinates(j,1:2) = stats.Centroid;
            j = j+1;
        end
        CCi = zeros([m,n]);
    end

end