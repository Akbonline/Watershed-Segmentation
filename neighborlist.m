function [front_x1, front_y1,labels] = neighborlist(image,i,j,rows,cols,labels,grays,front_x1, front_y1)
    if i==1 && j==1       
       if image(i+1,j)==grays && labels(i+1,j)==-1           
           labels(i+1,j)=labels(i,j);
           front_x1=[front_x1 i+1];
           front_y1=[front_y1 j];
       end
       if image(i+1,j+1)==grays && labels(i+1,j+1)==-1

           labels(i+1,j)=labels(i,j);
           front_x1=[front_x1 i+1];
           front_y1=[front_y1 j+1];
       end
       if image(i,j+1)==grays && labels(i,j+1)==-1           
           labels(i,j+1)=labels(i,j);
           front_x1=[front_x1 i];
           front_y1=[front_y1 j+1];
       end      
    end
    
    if i==rows && j>1
       if j<=cols-1
          if image(i-1,j)==grays && labels(i-1,j)==-1
            labels(i-1,j)=labels(i,j);
            front_x1=[front_x1 i-1];
            front_y1=[front_y1 j];
          end
          if image(i-1,j-1)==grays && labels(i-1,j-1)==-1
            labels(i-1,j-1)=labels(i,j);
            front_x1=[front_x1 i-1];
            front_y1=[front_y1 j-1];
          end
          if image(i,j-1)==grays && labels(i,j-1)==-1
            labels(i,j-1)=labels(i,j);
            front_x1=[front_x1 i];
            front_y1=[front_y1 j-1];
          end

          if image(i,j+1)==grays && labels(i,j+1)==-1
            labels(i,j+1)=labels(i,j);
            front_x1=[front_x1 i];
            front_y1=[front_y1 j+1];
          end
          if image(i-1,j+1)==grays && labels(i-1,j+1)==-1
            labels(i-1,j+1)=labels(i,j);
            front_x1=[front_x1 i-1];
            front_y1=[front_y1 j+1];
          end
       end
    end
   if i>1 && j>1
       if i<=rows-1 && j<=cols-1
            if image(i-1,j)==grays && labels(i-1,j)==-1
                labels(i-1,j)=labels(i,j);
                front_x1=[front_x1 i-1];
                front_y1=[front_y1 j];
            end
            if image(i-1,j-1)==grays && labels(i-1,j-1)==-1
                labels(i-1,j-1)=labels(i,j);
                front_x1=[front_x1 i-1];
                front_y1=[front_y1 j-1];
            end
            if image(i,j-1)==grays && labels(i,j-1)==-1
                labels(i,j-1)=labels(i,j);
                front_x1=[front_x1 i];
                front_y1=[front_y1 j-1];
            end
            if image(i+1,j-1)==grays && labels(i+1,j-1)==-1
                labels(i+1,j-1)=labels(i,j);
                front_x1=[front_x1 i+1];
                front_y1=[front_y1 j-1];
            end
            if image(i+1,j)==grays && labels(i+1,j)==-1
                labels(i+1,j)=labels(i,j);
                front_x1=[front_x1 i+1];
                front_y1=[front_y1 j];
            end
            if image(i+1,j+1)==grays && labels(i+1,j+1)==-1
                labels(i+1,j+1)=labels(i,j);
                front_x1=[front_x1 i+1];
                front_y1=[front_y1 j+1];
            end
            if image(i,j+1)==grays && labels(i,j+1)==-1
                labels(i,j+1)=labels(i,j);
                front_x1=[front_x1 i];
                front_y1=[front_y1 j+1];
            end
            if image(i-1,j+1)==grays && labels(i-1,j+1)==-1
                labels(i-1,j+1)=labels(i,j);
                front_x1=[front_x1 i-1];
                front_y1=[front_y1 j+1];
            end 
       end
   end
   if i>=2 && j==1
       if i<rows-1
           if image(i-1,j)==grays && labels(i-1,j)==-1
               labels(i-1,j)=labels(i,j);
               front_x1=[front_x1 i-1];
               front_y1=[front_y1 j];
           end           
           if image(i+1,j)==grays && labels(i+1,j)==-1
               labels(i+1,j)=labels(i,j);
               front_x1=[front_x1 i+1];
               front_y1=[front_y1 j];
           end
           if image(i+1,j+1)==grays && labels(i+1,j+1)==-1
               labels(i+1,j+1)=labels(i,j);
               front_x1=[front_x1 i+1];
               front_y1=[front_y1 j+1];
           end
           if image(i,j+1)==grays && labels(i,j+1)==-1
               labels(i,j+1)=labels(i,j);
               front_x1=[front_x1 i];
               front_y1=[front_y1 j+1];
           end
           if image(i-1,j+1)==grays && labels(i-1,j+1)==-1
               labels(i-1,j+1)=labels(i,j);
               front_x1=[front_x1 i-1];
               front_y1=[front_y1 j];
           end
       end
   end
   if i==rows && j==1
      if image(i-1,j)==grays && labels(i-1,j)==-1
        labels(i-1,j)=labels(i,j);
        front_x1=[front_x1 i-1];
        front_y1=[front_y1 j];
      end
      if image(i,j+1)==grays && labels(i,j+1)==-1
        labels(i,j+1)=labels(i,j);
        front_x1=[front_x1 i];
        front_y1=[front_y1 j+1];
      end          
       if image(i-1,j+1)==grays && labels(i-1,j+1)==-1
        labels(i-1,j+1)=labels(i,j);
        front_x1=[front_x1 i-1];
        front_y1=[front_y1 j+1];
       end
   end
    if i==1 && j>=2
        if j<=cols-1
        if image(i,j-1)==grays && labels(i,j-1)==-1           
           labels(i,j-1)=labels(i,j);
           front_x1=[front_x1 i];
           front_y1=[front_y1 j-1];
        end
        if image(i+1,j-1)==grays && labels(i+1,j-1)==-1           
           labels(i+1,j-1)=labels(i,j);
           front_x1=[front_x1 i+1];
           front_y1=[front_y1 j-1];
        end        
        if image(i+1,j)==grays && labels(i+1,j)==-1
            labels(i+1,j)=labels(i,j);
            front_x1=[front_x1 i+1];
            front_y1=[front_y1 j];
        end
        if image(i+1,j+1)==grays && labels(i+1,j+1)==-1
            labels(i+1,j+1)=labels(i,j);
            front_x1=[front_x1 i+1];
            front_y1=[front_y1 j+1];
        end
        if image(i,j+1)==grays && labels(i,j+1)==-1
            labels(i,j+1)=labels(i,j);
            front_x1=[front_x1 i];
            front_y1=[front_y1 j+1];
        end
       end
    end
    if i>=2 && j==cols
       if i<rows
          if image(i-1,j)==grays && labels(i-1,j)==-1
            labels(i-1,j)=labels(i,j);
            front_x1=[front_x1 i-1];
            front_y1=[front_y1 j];
          end
          if image(i-1,j-1)==grays && labels(i-1,j-1)==-1
            labels(i-1,j-1)=labels(i,j);
            front_x1=[front_x1 i-1];
            front_y1=[front_y1 j-1];
          end
          if image(i,j-1)==grays && labels(i,j-1)==-1
            labels(i,j-1)=labels(i,j);
            front_x1=[front_x1 i];
            front_y1=[front_y1 j-1];
          end

          if image(i+1,j-1)==grays && labels(i+1,j-1)==-1
            labels(i+1,j-1)=labels(i,j);
            front_x1=[front_x1 i+1];
            front_y1=[front_y1 j-1];
          end
          if image(i+1,j)==grays && labels(i+1,j)==-1
            labels(i+1,j)=labels(i,j);
            front_x1=[front_x1 i+1];
            front_y1=[front_y1 j];
          end
       end
    end
    if i==rows && j==cols  
      if image(i-1,j)==grays && labels(i-1,j)==-1
        labels(i-1,j)=labels(i,j);
        front_x1=[front_x1 i-1];
        front_y1=[front_y1 j];
      end
      if image(i-1,j-1)==grays && labels(i-1,j-1)==-1
        labels(i-1,j-1)=labels(i,j);
        front_x1=[front_x1 i-1];
        front_y1=[front_y1 j-1];
      end
      if image(i,j-1)==grays && labels(i,j-1)==-1
        labels(i,j-1)=labels(i,j);
        front_x1=[front_x1 i];
        front_y1=[front_y1 j-1];
      end
    end
    if i==1 && j==cols
      if image(i,j-1)==grays && labels(i,j-1)==-1
        labels(i,j-1)=labels(i,j);
        front_x1=[front_x1 i];
        front_y1=[front_y1 j-1];
      end
      if image(i+1,j-1)==grays && labels(i+1,j-1)==-1
        labels(i+1,j-1)=labels(i,j);
        front_x1=[front_x1 i+1];
        front_y1=[front_y1 j-1];
      end
      if image(i+1,j)==grays && labels(i+1,j)==-1
        labels(i+1,j)=labels(i,j);
        front_x1=[front_x1 i+1];
        front_y1=[front_y1 j];
      end           
    end
end
                   

                   
   
  



