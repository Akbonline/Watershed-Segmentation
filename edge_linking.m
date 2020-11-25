%% Edge Linking function: Takes in hysteresis values and returns the linked edges
function [final] = edge_linking(input_h)
    final = input_h;
    [height, width] = size(final);
    for i=1:height
        for j=1:width
            if(input_h(i,j) == 125) 
                [true] = nearestEight_hystersis(input_h, i, j);
                if(true == 1)
                    final(i,j) = 255;
                else
                    final(i,j) = 0;
                end
            end
        end
    end
end

