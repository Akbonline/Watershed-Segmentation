%% Dilate Function:
% Initialize output as zeros
% Check the boundary conditions and accesing each pixel
% Repeat for every pixel:
% Check the point
% Check if the value exists
% If it does, replace it with the new value, else move on!
function output1= dilation_function(A,height,width,se)
output1(height,width)=zeros(); 
for i=1:height
    for j=1:width        
        if i==1 && j==width
            if A(i,j)==se || A(i,j-1)==se || A(i+1,j)==se
             output1(i,j)=se;
            end
        end
        if i>1 && j>1
            if i<=height-1 && j<=width-1
               if A(i,j)==se || A(i,j-1)==se|| A(i-1,j)||A(i+1,j)==se||A(i,j+1)==se
                    output1(i,j)=se; 
               end
            end
        end
        if i==height && j==1
            if A(i,j)==se || A(i,j+1)==se || A(i-1,j)==se
             output1(i,j)=se;
            end
        end        
        if i==height && j==width 
           if A(i,j)==se || A(i,j-1)==se || A(i-1,j)==se
             output1(i,j)=se;
           end
        end
        if i==1 && j==1
           if A(i,j)==se || A(i,j+1)==se || A(i+1,j)==se
            output1(i,j)=se;
           end
        end
        if i==1 && j<width 
            if j>1
                if A(i,j)==se || A(i,j+1)==se|| A(i,j-1)||A(i+1,j)==se
                    output1(i,j)=se;
                end
            end
        end            
        if i>1 && j==1
            if i<height
                if A(i,j)==se || A(i,j+1)==se || A(i-1,j)||A(i+1,j)==se
                    output1(i,j)=se;
                end
            end
        end                     
         if i>1 && j==width
            if i<height
                if A(i,j)==se || A(i,j-1)==se|| A(i-1,j)||A(i+1,j)
                    output1(i,j)=se;
                end
            end
         end
         if i==height && j<=width-1 
            if j>1
                if A(i,j)==se || A(i,j+1)==se|| A(i-1,j) ||A(i,j-1)
                    output1(i,j)=se;
                end
            end
         end        
    end
end

