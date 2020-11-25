%% Non Max Suppression:
function [supress] = NonMaxSuppression(magnitude,Gradient,rows,cols)
    supress=magnitude;
    for i=1:rows
        for j=1:cols
            theta= Gradient(i,j);
            if i==1 && j>=1
                if theta<=22.5 || theta>157.5
                    if magnitude(i,j)<magnitude(i+1,j)
                        supress(i,j)=0;
                    end
                elseif theta>22.5 && theta<=67.5
                    if magnitude(i,j)<magnitude(i+1,j+1)
                        supress(i,j)=0;
                    end
                 elseif theta>67.5 && theta<=112.5
                    if magnitude(i,j)<magnitude(i,j-1) && magnitude(i,j)<magnitude(i,j+1)
                        supress(i,j)=0;
                    end
                elseif theta>112.5 && theta<=157.5
                    if magnitude(i,j)<magnitude(i+1,j-1)
                        supress(i,j)=0;
                    end
                end
            end
            if i>=2 && j==cols
               if i<rows-1
                if theta<=22.5 || theta>157.5
                    if magnitude(i,j)<magnitude(i-1,j) && magnitude(i,j)<magnitude(i+1,j)
                        supress(i,j)=0;
                    end
                elseif theta>22.5 && theta<=67.5
                    if magnitude(i,j)<magnitude(i-1,j-1) 
                        supress(i,j)=0;
                    end
                elseif theta>67.5 && theta<=112.5
                    if magnitude(i,j)<magnitude(i,j-1) 
                        supress(i,j)=0;
                    end

                elseif theta>112.5 && theta<=157.5
                    if magnitude(i,j)<magnitude(i+1,j-1)
                        supress(i,j)=0;
                    end 
                end
               end
            end
            if i==rows && j>1
               if j<cols-1        
                if theta<=22.5 || theta>157.5
                    if magnitude(i,j)<magnitude(i-1,j) 
                        supress(i,j)=0;
                    end
                elseif theta>22.5 && theta<=67.5
                    if magnitude(i,j)<magnitude(i-1,j-1) 
                        supress(i,j)=0;
                    end
                 elseif theta>67.5 && theta<=112.5
                    if magnitude(i,j)<magnitude(i,j-1) && magnitude(i,j)<magnitude(i,j+1)
                        supress(i,j)=0;
                    end
                elseif theta>112.5 && theta<=157.5
                    if magnitude(i,j)<magnitude(i-1,j+1) 
                        supress(i,j)=0;
                    end
                end
               end
            end
            if i>=2 && j==1
                if theta<=22.5 || theta>157.5
                    if magnitude(i,j)<magnitude(i-1,j) && magnitude(i,j)<magnitude(i+1,j)
                        supress(i,j)=0;
                    end
                elseif theta>22.5 && theta<=67.5
                    if magnitude(i,j)<magnitude(i+1,j+1)
                        supress(i,j)=0;
                    end
                 elseif theta>67.5 && theta<=112.5
                    if magnitude(i,j)<magnitude(i,j+1)
                        supress(i,j)=0;
                    end
                elseif theta>112.5 && theta<=157.5
                    if magnitude(i,j)<magnitude(i-1,j+1) 
                        supress(i,j)=0;
                    end
                end
            end
            if i>1 && j>1 
                if i<rows-1 && j<cols-1
                    if theta<=22.5 || theta>157.5
                        if magnitude(i,j)<magnitude(i-1,j) && magnitude(i,j)<magnitude(i+1,j)
                            supress(i,j)=0;
                        end
                    elseif theta>22.5 && theta<=67.5
                        if magnitude(i,j)<magnitude(i-1,j-1) && magnitude(i,j)<magnitude(i+1,j+1)
                            supress(i,j)=0;
                        end
                     elseif theta>67.5 && theta<=112.5
                        if magnitude(i,j)<magnitude(i,j-1) && magnitude(i,j)<magnitude(i,j+1)
                            supress(i,j)=0;
                        end
                    elseif theta>112.5 && theta<=157.5
                        if magnitude(i,j)<magnitude(i-1,j+1) && magnitude(i,j)<magnitude(i+1,j-1)
                            supress(i,j)=0;
                        end
                    end
                end
            end           
        end
    end
end