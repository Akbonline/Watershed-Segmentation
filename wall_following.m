%% Wall Following Algorithm (Modified specifically for watershed algorithm
function [A1,z1,z2]=wall_following(watershed_marker,A1,x0,y0,label,num_of_components)
    [flag,i,x1,y1,x2,y2,z1,z2]=deal(1,0,x0+1,y0+1,0,0,[],[]);
    A=padarray(watershed_marker,[1 1],0);
    while flag==1
       if i==0 
            if A(x1,y1-1)==label
                i=left(i);
                [A1,x2,y2,i,z1,z2]=forward(A1,i,x1,y1,label,z1,z2,num_of_components);
                 x1=x2;
                 y1=y2;
            elseif A(x1-1,y1)~=label
                i=right(i);
            else  
                [A1,x2,y2,i,z1,z2]=forward(A1,i,x1,y1,label,z1,z2,num_of_components);
                 x1=x2;
                 y1=y2;
            end 
       end
       if i==1 
            if A(x1-1,y1)==label
                i=left(i);
                [A1,x2,y2,i,z1,z2]=forward(A1,i,x1,y1,label,z1,z2,num_of_components);
                 x1=x2;
                 y1=y2;
            elseif A(x1,y1+1)~=label
                i=right(i);
            else 
                [A1,x2,y2,i,z1,z2]=forward(A1,i,x1,y1,label,z1,z2,num_of_components);
                 x1=x2;
                 y1=y2;
            end 
       end 
       if i==2 
            if A(x1,y1+1)==label
                i=left(i);
                [A1,x2,y2,i,z1,z2]=forward(A1,i,x1,y1,label,z1,z2,num_of_components);
                 x1=x2;
                 y1=y2;
            elseif A(x1+1,y1)~=label
                i=right(i);
            else 
                [A1,x2,y2,i,z1,z2]=forward(A1,i,x1,y1,label,z1,z2,num_of_components);
                 x1=x2;
                 y1=y2;
            end 
       end
       if i==3 
            if A(x1+1,y1)==label
                i=left(i);
                [A1,x2,y2,i,z1,z2]=forward(A1,i,x1,y1,label,z1,z2,num_of_components);
                 x1=x2;
                 y1=y2;
            elseif A(x1,y1-1)~=label 
                i=right(i);
            else 
                [A1,x2,y2,i,z1,z2]=forward(A1,i,x1,y1,label,z1,z2,num_of_components);
                 x1=x2;
                 y1=y2;
            end 
        end
        if (x2==x0+1 && y2==y0+1 ) || x2==0 || y2==0
            flag=0;
        end
    end
function [A1, x2, y2,i,z1,z2]=forward(A1,i,x2,y2,label,z1,z2,num_of_components)
    if i==0
       for j=1:length(num_of_components)
           if label==num_of_components(j)
            x2=x2-1;
            z1= [z1 x2];
            z2=[z2 y2];
            A1(x2,y2)=num_of_components(j);
           end                          
       end                           
    end                            
    if i==1
        for j=1:length(num_of_components)
            if label==num_of_components(j)
                y2=y2+1;
                z1= [z1 x2];                                     
                z2= [z2 y2];                                     
                A1(x2,y2)=num_of_components(j);                                    
            end
        end
    end                                       
    if i==2
        for j=1:length(num_of_components)                                    
            if label==num_of_components(j)
                x2=x2+1;
                z1= [z1 x2];                                  
                z2= [z2 y2];                                     
                A1(x2,y2)=num_of_components(j);
            end                                    
        end
    end
    if i==3
        for j=1:length(num_of_components)
            if label==num_of_components(j)
                 y2=y2-1;
                 z1= [z1 x2];                                     
                 z2= [z2 y2];                                     
                 A1(x2,y2)=num_of_components(j);
            end
        end
    end
end
function move_left=left(i)
     i=i-1;
     move_left=mod(i,4);
end
function move_right=right(i)
    i=i+1;
    move_right=mod(i,4);
    end
end
