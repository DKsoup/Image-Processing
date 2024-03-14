function out = correctImage(circleCoordinates , image)
rightCoordinates = [26	26
    26	445
    445	26];
    rightCoordinates = [rightCoordinates';ones(1,3)];
    circleCoordinates = circleCoordinates(1:3,:);
    circleCoordinates = [circleCoordinates';ones(1,3)];
    A = inv(circleCoordinates')*rightCoordinates';
    A(1:2,3) = 0;
    tform = affine2d(round(A,2));
    out = imwarp(image,tform);
end