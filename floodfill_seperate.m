%% FloodFill seperate function:

function final = floodfill_seperate(seed_point,image1,color,rows,cols,final)
old_color=image1(seed_point(1),seed_point(2));
if old_color==color
    return
else
    front_x1=[]; 
    front_y1=[];
    front_x1=[front_x1 seed_point(1)]; 
    front_y1=[front_y1 seed_point(2)];
    final(seed_point(1),seed_point(2))=color;
    while ~isempty (front_x1 & front_y1)
        q_x=front_x1(length(front_x1));
        front_x1(length(front_x1))=[];
        q_y=front_y1(length(front_y1));
        front_y1(length(front_y1))=[];
        image1(q_x,q_y)=color;
        for i=1:4 
         if i==1 && q_y<cols
             if image1(q_x,q_y+1)==old_color && final(q_x,q_y+1)~=color
               final(q_x,q_y+1)=color;
               front_x1=[front_x1 q_x ];
               front_y1=[front_y1 q_y+1];
             end  
         end
        if i==2 && q_x<rows 
            if image1(q_x+1,q_y)==old_color && final(q_x+1,q_y)~=color
                final(q_x+1,q_y)=color;
                front_x1=[front_x1 q_x+1 ];
                front_y1=[front_y1 q_y];
            end
        end 
         if i==3 && q_x>=2
             if image1(q_x-1,q_y)==old_color && final(q_x-1,q_y)~=color
                final(q_x-1,q_y)=color;
                front_x1=[front_x1 q_x-1 ];
                front_y1=[front_y1 q_y];
             end
         end  
        if i==4 && q_y>=2
            if image1(q_x,q_y-1)==old_color && final(q_x,q_y-1)~=color
                final(q_x,q_y-1)=color;
                front_x1=[front_x1 q_x ];
                front_y1=[front_y1 q_y-1];
            end
         end  
        end
   end
end      
end


