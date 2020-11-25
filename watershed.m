%% Watershed function
% Takes in the image 
% Produces quantized magnitude image and label
% The output produced is watershed image
% Step 1:
% > leveling the pixel list 
% > setting the label to -1 
% > Initilizing the label variable from -1 through unlabled
function label = watershed(image) 
    [cols,rows,~]=size(image);
    x1=cell(1,256);
    y1=cell(1,256);
    for i=1:cols
        for j=1:rows
            c=image(i,j);
            x1{c+1}=[ x1{c+1} i];
            y1{c+1}=[ y1{c+1} j];       
        end
    end
    label=-1*ones(cols,rows);  
    labels=0;
    % Step 2: 
        % Part b:
        % > Check if the frontier empty
        % > Pop the last value from the Stack
        % > Delete the last value
        % > Pop the last value from the Stack
        % > Delete the last value
        % > Visit this Stack, change the label, and push the updated value
        % > Creating a new catchment basins
    for i=1:256 
        [tlabel, x,y,front_x1,front_y1]= deal(label,x1{i},y1{i},[],[]);
        for j=1:length(x)
            grays=i-1;
            [label,flag]= nearestEight_watershed(tlabel,x(j),y(j),cols,rows,grays,label,image);
            if flag>0 
                front_x1=[front_x1 x(j)];
                front_y1=[front_y1 y(j)];
            end
        end 
        while ~isempty (front_x1 & front_y1) 
            qx=front_x1(length(front_x1)); 
            front_x1(length(front_x1))=[]; 
            qy=front_y1(length(front_y1)); 
            front_y1(length(front_y1))=[]; 
            [front_x1, front_y1,label] = neighborlist_watershed(image,qx,qy,cols,rows,label,grays,front_x1, front_y1);
        end
        for k=1:length(x)
            seed_point=[x(k) y(k)];
            color2=labels;
            if image(x(k),y(k))==grays && label(x(k),y(k))==-1 
                label = floodfill_seperate(seed_point,image,color2,cols,rows,label);
                labels=labels+1;
            end
        end
    end
end

