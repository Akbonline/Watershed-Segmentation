function [front_x1, front_y1,labellist] = neighborlist_watershed(image,i,j,rows,cols,labellist,grays,front_x1, front_y1)
    if i==1 && j==1
       if image(i+1,j)==grays && labellist(i+1,j)==-1           
           labellist(i+1,j)=labellist(i,j);
           front_x1=[front_x1 i+1];
           front_y1=[front_y1 j];
       end
       if image(i+1,j+1)==grays && labellist(i+1,j+1)==-1           
           labellist(i+1,j)=labellist(i,j);
           front_x1=[front_x1 i+1];
           front_y1=[front_y1 j+1];
       end
       if image(i,j+1)==grays && labellist(i,j+1)==-1           
           labellist(i,j+1)=labellist(i,j);
           front_x1=[front_x1 i];
           front_y1=[front_y1 j+1];
       end
    end
    if i==1 && j>=2
        if j<=cols-1
            if image(i,j-1)==grays && labellist(i,j-1)==-1
                   labellist(i,j-1)=labellist(i,j);
                   front_x1=[front_x1 i];
                   front_y1=[front_y1 j-1];
            end
            if image(i+1,j-1)==grays && labellist(i+1,j-1)==-1
                   labellist(i+1,j-1)=labellist(i,j);
                   front_x1=[front_x1 i+1];
                   front_y1=[front_y1 j-1];
            end
            if image(i+1,j)==grays && labellist(i+1,j)==-1
               labellist(i+1,j)=labellist(i,j);
               front_x1=[front_x1 i+1];
               front_y1=[front_y1 j];
            end
            if image(i+1,j+1)==grays && labellist(i+1,j+1)==-1
               labellist(i+1,j+1)=labellist(i,j);
               front_x1=[front_x1 i+1];
               front_y1=[front_y1 j+1];
            end
            if image(i,j+1)==grays && labellist(i,j+1)==-1
               labellist(i,j+1)=labellist(i,j);
               front_x1=[front_x1 i];
               front_y1=[front_y1 j+1];
            end
        end
    end
   if i>1 && j>1
       if i<=rows-1 && j<=cols-1
          if image(i-1,j)==grays && labellist(i-1,j)==-1
                labellist(i-1,j)=labellist(i,j);
                front_x1=[front_x1 i-1];
                front_y1=[front_y1 j];
          end
          if image(i-1,j-1)==grays && labellist(i-1,j-1)==-1
                labellist(i-1,j-1)=labellist(i,j);
                front_x1=[front_x1 i-1];
                front_y1=[front_y1 j-1];
          end

          if image(i,j-1)==grays && labellist(i,j-1)==-1
                labellist(i,j-1)=labellist(i,j);
                front_x1=[front_x1 i];
                front_y1=[front_y1 j-1];
          end
          if image(i+1,j-1)==grays && labellist(i+1,j-1)==-1
                labellist(i+1,j-1)=labellist(i,j);
                front_x1=[front_x1 i+1];
                front_y1=[front_y1 j-1];
          end
          if image(i+1,j)==grays && labellist(i+1,j)==-1
                labellist(i+1,j)=labellist(i,j);
                front_x1=[front_x1 i+1];
                front_y1=[front_y1 j];
          end
          if image(i+1,j+1)==grays && labellist(i+1,j+1)==-1
                labellist(i+1,j+1)=labellist(i,j);
                front_x1=[front_x1 i+1];
                front_y1=[front_y1 j+1];
          end           
          if image(i,j+1)==grays && labellist(i,j+1)==-1
                labellist(i,j+1)=labellist(i,j);
                front_x1=[front_x1 i];
                front_y1=[front_y1 j+1];
          end
          if image(i-1,j+1)==grays && labellist(i-1,j+1)==-1
                labellist(i-1,j+1)=labellist(i,j);
                front_x1=[front_x1 i-1];
                front_y1=[front_y1 j+1];
           end           
       end
   end
    if i>=2 && j==1
       if i<rows-1        
        if image(i-1,j)==grays && labellist(i-1,j)==-1
            labellist(i-1,j)=labellist(i,j);
            front_x1=[front_x1 i-1];
            front_y1=[front_y1 j];
        end
        if image(i+1,j)==grays && labellist(i+1,j)==-1
            labellist(i+1,j)=labellist(i,j);
            front_x1=[front_x1 i+1];
            front_y1=[front_y1 j];
        end
        if image(i+1,j+1)==grays && labellist(i+1,j+1)==-1
            labellist(i+1,j+1)=labellist(i,j);
            front_x1=[front_x1 i+1];
            front_y1=[front_y1 j+1];
        end
        if image(i,j+1)==grays && labellist(i,j+1)==-1
            labellist(i,j+1)=labellist(i,j);
            front_x1=[front_x1 i];
            front_y1=[front_y1 j+1];
        end
        if image(i-1,j+1)==grays && labellist(i-1,j+1)==-1
            labellist(i-1,j+1)=labellist(i,j);
            front_x1=[front_x1 i-1];
            front_y1=[front_y1 j];
        end
       end
    end
    if i==rows && j==1
        if image(i-1,j)==grays && labellist(i-1,j)==-1
            labellist(i-1,j)=labellist(i,j);
            front_x1=[front_x1 i-1];
            front_y1=[front_y1 j];
        end           
        if image(i,j+1)==grays && labellist(i,j+1)==-1
            labellist(i,j+1)=labellist(i,j);
            front_x1=[front_x1 i];
            front_y1=[front_y1 j+1];
        end
        if image(i-1,j+1)==grays && labellist(i-1,j+1)==-1
            labellist(i-1,j+1)=labellist(i,j);
            front_x1=[front_x1 i-1];
            front_y1=[front_y1 j+1];
        end
    end
    if i==rows && j>1
       if j<=cols-1
          if image(i-1,j)==grays && labellist(i-1,j)==-1
            labellist(i-1,j)=labellist(i,j);
            front_x1=[front_x1 i-1];
            front_y1=[front_y1 j];
          end
          if image(i-1,j-1)==grays && labellist(i-1,j-1)==-1
            labellist(i-1,j-1)=labellist(i,j);
            front_x1=[front_x1 i-1];
            front_y1=[front_y1 j-1];
          end
          if image(i,j-1)==grays && labellist(i,j-1)==-1
            labellist(i,j-1)=labellist(i,j);
            front_x1=[front_x1 i];
            front_y1=[front_y1 j-1];
          end

          if image(i,j+1)==grays && labellist(i,j+1)==-1
            labellist(i,j+1)=labellist(i,j);
            front_x1=[front_x1 i];
            front_y1=[front_y1 j+1];
          end
          if image(i-1,j+1)==grays && labellist(i-1,j+1)==-1
            labellist(i-1,j+1)=labellist(i,j);
            front_x1=[front_x1 i-1];
            front_y1=[front_y1 j+1];
          end
       end
    end
    if i==1 && j==cols
        if image(i,j-1)==grays && labellist(i,j-1)==-1
            labellist(i,j-1)=labellist(i,j);
            front_x1=[front_x1 i];
            front_y1=[front_y1 j-1];
        end
        if image(i+1,j-1)==grays && labellist(i+1,j-1)==-1
            labellist(i+1,j-1)=labellist(i,j);
            front_x1=[front_x1 i+1];
            front_y1=[front_y1 j-1];
        end
        if image(i+1,j)==grays && labellist(i+1,j)==-1
            labellist(i+1,j)=labellist(i,j);
            front_x1=[front_x1 i+1];
            front_y1=[front_y1 j];
        end
    end
    if i>=2 && j==cols
       if i<rows
%                    a=image(i-1,j);
%                    b=image(i-1,j-1);
%                    c=image(i,j-1);
%                    d=image(i+1,j-1);
%                    e=image(i+1,j);
           if image(i-1,j)==grays && labellist(i-1,j)==-1
            labellist(i-1,j)=labellist(i,j);
            front_x1=[front_x1 i-1];
            front_y1=[front_y1 j];
          end
          if image(i-1,j-1)==grays && labellist(i-1,j-1)==-1
            labellist(i-1,j-1)=labellist(i,j);
            front_x1=[front_x1 i-1];
            front_y1=[front_y1 j-1];
          end
          if image(i,j-1)==grays && labellist(i,j-1)==-1
            labellist(i,j-1)=labellist(i,j);
            front_x1=[front_x1 i];
            front_y1=[front_y1 j-1];
          end

          if image(i+1,j-1)==grays && labellist(i+1,j-1)==-1
            labellist(i+1,j-1)=labellist(i,j);
            front_x1=[front_x1 i+1];
            front_y1=[front_y1 j-1];
          end
          if image(i+1,j)==grays && labellist(i+1,j)==-1
            labellist(i+1,j)=labellist(i,j);
            front_x1=[front_x1 i+1];
            front_y1=[front_y1 j];
          end
       end
    end
    if i==rows && j==cols   
        if image(i-1,j)==grays && labellist(i-1,j)==-1
            labellist(i-1,j)=labellist(i,j);
            front_x1=[front_x1 i-1];
            front_y1=[front_y1 j];
        end
        if image(i-1,j-1)==grays && labellist(i-1,j-1)==-1
            labellist(i-1,j-1)=labellist(i,j);
            front_x1=[front_x1 i-1];
            front_y1=[front_y1 j-1];
        end
        if image(i,j-1)==grays && labellist(i,j-1)==-1
            labellist(i,j-1)=labellist(i,j);
            front_x1=[front_x1 i];
            front_y1=[front_y1 j-1];
        end
    end    
end