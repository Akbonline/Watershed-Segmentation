%% Connected Components using Repeated Floodfill
function [label,noc] = ConnectedComponentRepeatedFloodFill(rows,cols,marker,label)
    [color, noc1,noc]=deal(0,0,[]);
    for i=1:rows
        for j=1:cols
            if (label(i,j)==-1 && marker(i,j)==255)
                seed_point=[i j];
                label=floodfill_seperate(seed_point,marker,color,rows,cols,label);
                noc1=noc1+1;
                noc=[noc noc1];
                color=color+1;
            end
        end
    end
end