function [val] = nearestEight_hystersis(hysteresis, x, y)
    [height, width] = size(hysteresis);
    for i = 0:3
        for j=0:3
            if x+i <= height && x-i > 0 && y+j <= width && y-j > 0
               if(hysteresis(x+i, y+j) == 255)
                   val = 1;
                   return;
               else
                   val = 0;
               end
            end
        end
    end
end

