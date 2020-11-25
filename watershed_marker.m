%% Watershed Markers: Takes in the image and markers as inputs and watershed markers as the output
% Create the level pixel list 
% Set the label to -1 
% Create a Global label
function [label,num_components] = watershed_marker(Image,Marker)
    image=Image(2:127,2:127);
    [rows,cols,~]=size(image);
    xc=cell(1,256);
    yc=cell(1,256);
    for i=1:rows
        for j=1:cols
            c=image(i,j);
            xc{c+1}=[ xc{c+1} i];
            yc{c+1}=[ yc{c+1} j];             
        end
    end
    label=-1*ones(rows,cols);
    [label,num_components] = ConnectedComponentRepeatedFloodFill(rows,cols,Marker,label);
    for i=1:256 
        temp_label=label;
        x=xc{i};
        y=yc{i};    
        % frontier 
        front_x1=[];
        front_y1=[];
        for j=1:length(x)
            grays=i-1;        
            [label,flag]= nearestEight_watershed(temp_label,x(j),y(j),rows,cols,grays,label,image);
            if flag>0
                front_x1=[front_x1 x(j)];
                front_y1=[front_y1 y(j)];
            end        
        end
        while ~isempty (front_x1 & front_y1)          
          x2=front_x1(length(front_x1));
          front_x1(length(front_x1))=[];        
          y2=front_y1(length(front_y1));
          front_y1(length(front_y1))=[];
          [front_x1, front_y1,label] = neighborlist_watershed_marker(image,x2,y2,rows,cols,label,grays,front_x1, front_y1);
        end   
    end
end

