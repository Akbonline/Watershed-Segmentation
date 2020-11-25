function [front_x1, front_y1,labels] = neighborlist_watershed_marker(image,x,y,rows,cols,labels,grays,front_x1, front_y1)
   if x==1 && y==1
       if image(x+1,y)<=grays && labels(x+1,y)==-1
           
           labels(x+1,y)=labels(x,y);
           front_x1=[front_x1 x+1];
           front_y1=[front_y1 y];
       end
       if image(x+1,y+1)<=grays && labels(x+1,y+1)==-1
           
           labels(x+1,y)=labels(x,y);
           front_x1=[front_x1 x+1];
           front_y1=[front_y1 y+1];
       end
       if image(x,y+1)<=grays && labels(x,y+1)==-1
           
           labels(x,y+1)=labels(x,y);
           front_x1=[front_x1 x];
           front_y1=[front_y1 y+1];
       end
   end
    if x>1 && y>1
       if x<=rows-1 && y<=cols-1
           if image(x-1,y)<=grays && labels(x-1,y)==-1
                labels(x-1,y)=labels(x,y);
                front_x1=[front_x1 x-1];
                front_y1=[front_y1 y];
           end
           if image(x-1,y-1)<=grays && labels(x-1,y-1)==-1
                labels(x-1,y-1)=labels(x,y);
                front_x1=[front_x1 x-1];
                front_y1=[front_y1 y-1];
           end

           if image(x,y-1)<=grays && labels(x,y-1)==-1
                labels(x,y-1)=labels(x,y);
                front_x1=[front_x1 x];
                front_y1=[front_y1 y-1];
           end
           if image(x+1,y-1)<=grays && labels(x+1,y-1)==-1
                labels(x+1,y-1)=labels(x,y);
                front_x1=[front_x1 x+1];
                front_y1=[front_y1 y-1];
           end
           if image(x+1,y)<=grays && labels(x+1,y)==-1
                labels(x+1,y)=labels(x,y);
                front_x1=[front_x1 x+1];
                front_y1=[front_y1 y];
           end
           if image(x+1,y+1)<=grays && labels(x+1,y+1)==-1
                labels(x+1,y+1)=labels(x,y);
                front_x1=[front_x1 x+1];
                front_y1=[front_y1 y+1];
           end           
            if image(x,y+1)<=grays && labels(x,y+1)==-1
                labels(x,y+1)=labels(x,y);
                front_x1=[front_x1 x];
                front_y1=[front_y1 y+1];
            end
           if image(x-1,y+1)<=grays && labels(x-1,y+1)==-1
                labels(x-1,y+1)=labels(x,y);
                front_x1=[front_x1 x-1];
                front_y1=[front_y1 y+1];
           end
       end
   end
    if x==1 && y>=2
        if y<=cols-1
        if image(x,y-1)<=grays && labels(x,y-1)==-1
           
           labels(x,y-1)=labels(x,y);
           front_x1=[front_x1 x];
           front_y1=[front_y1 y-1];
        end
        if image(x+1,y-1)<=grays && labels(x+1,y-1)==-1
           
           labels(x+1,y-1)=labels(x,y);
           front_x1=[front_x1 x+1];
           front_y1=[front_y1 y-1];
        end
        
        if image(x+1,y)<=grays && labels(x+1,y)==-1
            labels(x+1,y)=labels(x,y);
            front_x1=[front_x1 x+1];
            front_y1=[front_y1 y];
        end   
          
        if image(x+1,y+1)<=grays && labels(x+1,y+1)==-1
            labels(x+1,y+1)=labels(x,y);
            front_x1=[front_x1 x+1];
            front_y1=[front_y1 y+1];
        end
        if image(x,y+1)<=grays && labels(x,y+1)==-1           
            labels(x,y+1)=labels(x,y);
            front_x1=[front_x1 x];
            front_y1=[front_y1 y+1];
        end
        end
    end
    if x>=2 && y==cols
               if x<rows
                   if image(x-1,y)<=grays && labels(x-1,y)==-1
                    labels(x-1,y)=labels(x,y);
                    front_x1=[front_x1 x-1];
                    front_y1=[front_y1 y];
                  end
                  if image(x-1,y-1)<=grays && labels(x-1,y-1)==-1
                    labels(x-1,y-1)=labels(x,y);
                    front_x1=[front_x1 x-1];
                    front_y1=[front_y1 y-1];
                  end
                  if image(x,y-1)<=grays && labels(x,y-1)==-1
                    labels(x,y-1)=labels(x,y);
                    front_x1=[front_x1 x];
                    front_y1=[front_y1 y-1];
                  end
                  
                  if image(x+1,y-1)<=grays && labels(x+1,y-1)==-1
                    labels(x+1,y-1)=labels(x,y);
                    front_x1=[front_x1 x+1];
                    front_y1=[front_y1 y-1];
                  end
                  if image(x+1,y)<=grays && labels(x+1,y)==-1
                    labels(x+1,y)=labels(x,y);
                    front_x1=[front_x1 x+1];
                    front_y1=[front_y1 y];
                  end
               end
    end
   if x==rows && y==1
          if image(x-1,y)<=grays && labels(x-1,y)==-1
            labels(x-1,y)=labels(x,y);
            front_x1=[front_x1 x-1];
            front_y1=[front_y1 y];
          end
           
          if image(x,y+1)<=grays && labels(x,y+1)==-1
            labels(x,y+1)=labels(x,y);
            front_x1=[front_x1 x];
            front_y1=[front_y1 y+1];
          end
          
           if image(x-1,y+1)<=grays && labels(x-1,y+1)==-1
            labels(x-1,y+1)=labels(x,y);
            front_x1=[front_x1 x-1];
            front_y1=[front_y1 y+1];
           end


   end
   
   if x==rows && y>1
               if y<=cols-1
                  if image(x-1,y)<=grays && labels(x-1,y)==-1
                    labels(x-1,y)=labels(x,y);
                    front_x1=[front_x1 x-1];
                    front_y1=[front_y1 y];
                  end
                  if image(x-1,y-1)<=grays && labels(x-1,y-1)==-1
                    labels(x-1,y-1)=labels(x,y);
                    front_x1=[front_x1 x-1];
                    front_y1=[front_y1 y-1];
                  end
                  if image(x,y-1)<=grays && labels(x,y-1)==-1
                    labels(x,y-1)=labels(x,y);
                    front_x1=[front_x1 x];
                    front_y1=[front_y1 y-1];
                  end
                  
                  if image(x,y+1)<=grays && labels(x,y+1)==-1
                    labels(x,y+1)=labels(x,y);
                    front_x1=[front_x1 x];
                    front_y1=[front_y1 y+1];
                  end
                  if image(x-1,y+1)<=grays && labels(x-1,y+1)==-1
                    labels(x-1,y+1)=labels(x,y);
                    front_x1=[front_x1 x-1];
                    front_y1=[front_y1 y+1];
                  end
               end
            
   end
   if x==rows && y==cols
      if image(x-1,y)<=grays && labels(x-1,y)==-1
        labels(x-1,y)=labels(x,y);
        front_x1=[front_x1 x-1];
        front_y1=[front_y1 y];
      end
      if image(x-1,y-1)<=grays && labels(x-1,y-1)==-1
        labels(x-1,y-1)=labels(x,y);
        front_x1=[front_x1 x-1];
        front_y1=[front_y1 y-1];
      end
      if image(x,y-1)<=grays && labels(x,y-1)==-1
        labels(x,y-1)=labels(x,y);
        front_x1=[front_x1 x];
        front_y1=[front_y1 y-1];
      end
   end
    if x>=2 && y==1
       if x<rows-1
           if image(x-1,y)<=grays && labels(x-1,y)==-1
               labels(x-1,y)=labels(x,y);
               front_x1=[front_x1 x-1];
               front_y1=[front_y1 y];
           end
           if image(x+1,y)<=grays && labels(x+1,y)==-1
               labels(x+1,y)=labels(x,y);
               front_x1=[front_x1 x+1];
               front_y1=[front_y1 y];
           end
           if image(x+1,y+1)<=grays && labels(x+1,y+1)==-1
               labels(x+1,y+1)=labels(x,y);
               front_x1=[front_x1 x+1];
               front_y1=[front_y1 y+1];
           end
           if image(x,y+1)<=grays && labels(x,y+1)==-1
               labels(x,y+1)=labels(x,y);
               front_x1=[front_x1 x];
               front_y1=[front_y1 y+1];
           end
           if image(x-1,y+1)<=grays && labels(x-1,y+1)==-1
               labels(x-1,y+1)=labels(x,y);
               front_x1=[front_x1 x-1];
               front_y1=[front_y1 y];
           end
       end
    end
    if x==1 && y==cols
      if image(x,y-1)<=grays && labels(x,y-1)==-1
        labels(x,y-1)=labels(x,y);
        front_x1=[front_x1 x];
        front_y1=[front_y1 y-1];
      end
      if image(x+1,y-1)<=grays     && labels(x+1,y-1)==-1
        labels(x+1,y-1)=labels(x,y);
        front_x1=[front_x1 x+1];
        front_y1=[front_y1 y-1];
      end
      if image(x+1,y)<=grays     && labels(x+1,y)==-1
        labels(x+1,y)=labels(x,y);
        front_x1=[front_x1 x+1];
        front_y1=[front_y1 y];
      end
    end
end



