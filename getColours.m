function colours=getColours(image) 
    circleCoordinates = findCircles(image);
    xstart = round(min(circleCoordinates(:,1)));
    ystart = round(min(circleCoordinates(:,2)));
    xstart = xstart + 85;
    ystart = ystart + 85;
    colours = {};
    i = 1;
    j = 1;
    figure;imshow(image);
    hold on;
    for x = 1 :85 : 85*3+1
        j = 1;
        for y = 1 :85 : 85*3+1
            xidx = xstart + x;
            yidx = ystart + y;
            %plot(xidx,yidx,'r*');
            color(:,:,1) = mean2(image(yidx-5:yidx+5,xidx-5:xidx+5,1));
            color(:,:,2) = mean2(image(yidx-5:yidx+5,xidx-5:xidx+5,2));
            color(:,:,3) = mean2(image(yidx-5:yidx+5,xidx-5:xidx+5,3));
           %% Yellow
            % Define thresholds for channel 1 based on histogram settings
            channel1Min = 200.000;
            channel1Max = 255.000;

            % Define thresholds for channel 2 based on histogram settings
            channel2Min = 194.000;
            channel2Max = 235.000;

            % Define thresholds for channel 3 based on histogram settings
            channel3Min = 25.000;
            channel3Max = 68.000;
            if (color(:,:,1) >= channel1Min ) && (color(:,:,1) <= channel1Max) && ...
    (color(:,:,2) >= channel2Min ) && (color(:,:,2) <= channel2Max) && ...
    (color(:,:,3) >= channel3Min ) && (color(:,:,3) <= channel3Max)
                colours{j,i} = "Yellow";
            end
            %% White
                
            % Define thresholds for channel 1 based on histogram settings
            channel1Min = 235.000;
            channel1Max = 255.000;
            
            % Define thresholds for channel 2 based on histogram settings
            channel2Min = 237.000;
            channel2Max = 255.000;
            
            % Define thresholds for channel 3 based on histogram settings
            channel3Min = 236.000;
            channel3Max = 255.000;
            if (color(:,:,1) >= channel1Min ) & (color(:,:,1) <= channel1Max) & ...
    (color(:,:,2) >= channel2Min ) & (color(:,:,2) <= channel2Max) & ...
    (color(:,:,3) >= channel3Min ) & (color(:,:,3) <= channel3Max)
                colours{j,i} = "White";
            end
%% Blue
            channel1Min = 0.000;
            channel1Max = 155.000;
            
            % Define thresholds for channel 2 based on histogram settings
            channel2Min = 0.000;
            channel2Max = 89.000;
            
            % Define thresholds for channel 3 based on histogram settings
            channel3Min = 160.000;
            channel3Max = 255.000;
            if (color(:,:,1) >= channel1Min ) & (color(:,:,1) <= channel1Max) & ...
    (color(:,:,2) >= channel2Min ) & (color(:,:,2) <= channel2Max) & ...
    (color(:,:,3) >= channel3Min ) & (color(:,:,3) <= channel3Max)
                colours{j,i} = "Blue";
            end
            %% Red
            % Define thresholds for channel 1 based on histogram settings
            channel1Min = 189.000;
            channel1Max = 231.000;
            
            % Define thresholds for channel 2 based on histogram settings
            channel2Min = 26.000;
            channel2Max = 63.000;
            
            % Define thresholds for channel 3 based on histogram settings
            channel3Min = 0.000;
            channel3Max = 50.000;
            if (color(:,:,1) >= channel1Min ) & (color(:,:,1) <= channel1Max) & ...
    (color(:,:,2) >= channel2Min ) & (color(:,:,2) <= channel2Max) & ...
    (color(:,:,3) >= channel3Min ) & (color(:,:,3) <= channel3Max)
                colours{j,i} = "Red";
            end
%% Green
            % Define thresholds for channel 1 based on histogram settings
            channel1Min = 22.000;
            channel1Max = 78.000;
            
            % Define thresholds for channel 2 based on histogram settings
            channel2Min = 154.000;
            channel2Max = 207.000;
            
            % Define thresholds for channel 3 based on histogram settings
            channel3Min = 23.000;
            channel3Max = 76.000;
            if (color(:,:,1) >= channel1Min ) & (color(:,:,1) <= channel1Max) & ...
    (color(:,:,2) >= channel2Min ) & (color(:,:,2) <= channel2Max) & ...
    (color(:,:,3) >= channel3Min ) & (color(:,:,3) <= channel3Max)
                colours{j,i} = "Green";

            end
            
            j = j + 1;

        end
           i = i + 1;
    end


end