function colorcell = findColours(filename) 
    im = imread(filename);
    %im = imread( filename, 'BackgroundColor', [1 1 1]);
    immed = noice(im);
    imged = imgaussfilt3(immed);
    circleCoordinates = findCircles(imged);
    out = correctImage(circleCoordinates , imged);
    colorcell=getColours(out);
end