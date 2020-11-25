%% Ridge Line Function: Input -> Image and Output -> Image w/ generated ridged line
function [final] = ridgeline(noc,watershed_marker,final)
    [x,y]=deal([],[])
    final=final(2:127,2:127);
    [rows,cols,~]=size(watershed_marker) 
    final=cat(3, final, final, final);
    for k=1:length(noc)-1  
        for i=1:rows-2
            for j=1:cols-2
                if watershed_marker(i,j)==noc(k)
                   if length(x)<k
                        x=[x i];
                        y=[y j];
                        break
                   end
                end
            end
        end
    end             
    temp(rows,cols)=zeros;
    for i=1:length(x)
        x0=x(i);
        y0=y(i);
        [temp,z1,z2]=wall_following(watershed_marker,temp,x0,y0,noc(i),noc);    
        while ~isempty (z1 & z2)
            q_x=z1(length(z1));
            z1(length(z1))=[];        
            q_y=z2(length(z2));
            z2(length(z2))=[];          
            for h=1:rows
                for j=1:cols
                    if h==q_x && j==q_y
                        final(h-1,j-1,1)=0;
                        final(h-1,j-1,2)=255;
                        final(h-1,j-1,3)=0;
                    end
                end
            end     
        end
    end
end

