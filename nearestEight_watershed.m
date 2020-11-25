function [final,flag] = nearestEight_watershed(tlabels,i,j,rows,cols,grays,final,image)
    flag=0;
    if i==1 && j==1       
       a=tlabels(i+1,j);
       b=tlabels(i+1,j+1);
       c=tlabels(i,j+1);
       if image(i,j)==grays && (a>=0||b>=0||c>=0)       
           x=[a b c ];
           for i1=1:length(x)
            if x(i1)==-1
                x(i1)=inf;
            end
           end
           x1=min(x);
           if x1~=inf
               final(i,j)=min(x1);
               flag=1;
           end
       end 
    end
    if i>=2 && j==1
        if i<rows-1
            a=tlabels(i-1,j);
            b=tlabels(i+1,j);
            c=tlabels(i+1,j+1);
            d=tlabels(i,j+1);
            e=tlabels(i-1,j+1);
            if image(i,j)==grays && (a>=0||b>=0||c>=0||d>=0||e>=0)           
                x=[a b c d e];
                for i1=1:length(x)
                    if x(i1)==-1
                        x(i1)=inf;
                    end
                end
                x1=min(x);
                if x1~=inf
                    final(i,j)=min(x1);
                    flag=1;
                end
            end                   
        end
    end
    if i==1 && j>=2
        if j<=cols-1            
            a=tlabels(i,j-1);
            b=tlabels(i+1,j-1);
            c=tlabels(i+1,j);
            d=tlabels(i+1,j+1);
            e=tlabels(i,j+1);            
            if image(i,j)==grays && (a>=0||b>=0||c>=0||d>=0||e>=0)
                x=[a b c d e ];
                for i1=1:length(x)
                    if x(i1)==-1
                        x(i1)=inf;
                    end
                end
                x1=min(x);
                if x1~=inf
                    final(i,j)=x1;
                    flag=1;
                end
            end
        end        
    end
    if i==rows && j==1
        a=tlabels(i-1,j);
        b=tlabels(i,j+1);
        c=tlabels(i-1,j+1);               
        if a||b||c           
            x=[a b c]; 
            for i1=1:length(x)
                if x(i1)==-1
                    x(i1)=inf;
                end
            end
            x1=min(x);
            if x1~=inf
                final(i,j)=min(x1);
                flag=1;
            end
        end
    end
    if i==rows && j>1 
        if j<=cols-1
            a=tlabels(i-1,j);
            b=tlabels(i-1,j-1);
            c=tlabels(i,j-1);
            d=tlabels(i,j+1);
            e=tlabels(i-1,j+1);
            if image(i,j)==grays && (a>=0||b>=0||c>=0||d>=0||e>=0)
                x=[a b c d e]; 
                for i1=1:length(x)
                    if x(i1)==-1
                        x(i1)=inf;
                    end
                end
                x1=min(x);
                if x1~=inf
                    final(i,j)=min(x1);
                    flag=1;
                end
            end                    
        end            
    end
    if i==rows && j==cols
        a=tlabels(i-1,j);
        b=tlabels(i-1,j-1);
        c=tlabels(i,j-1);
        if image(i,j)==grays && (a>=0||b>=0||c>=0)
            x=[a b c]; 
            for i1=1:length(x)
                if x(i1)==-1
                    x(i1)=inf;
                end
            end
            x1=min(x);
            if x1~=inf
                final(i,j)=min(x1);
                flag=1;
            end
        end         
    end
    if i>1 && j>1
        if i<=rows-1 && j<=cols-1          
            a=tlabels(i-1,j);
            b=tlabels(i-1,j-1);
            c=tlabels(i,j-1);
            d=tlabels(i+1,j-1);
            e=tlabels(i+1,j);
            f=tlabels(i+1,j+1);
            g=tlabels(i,j+1);
            h=tlabels(i-1,j+1);
            if image(i,j)==grays && (a>=0||b>=0||c>=0||d>=0||e>=0||f>=0||g>=0||h>=0)
                x=[a b c d e f g h];
                for l1=1:length(x)
                    if x(l1)==-1
                        x(l1)=inf;  
                    end
                end
                x1=min(x);
                if x1~=inf
                    final(i,j)=x1;
                    flag=1;
                end
            end
        end
    end   
    if i>=2 && j==cols
        if i<rows
            a=tlabels(i-1,j);
            b=tlabels(i-1,j-1);
            c=tlabels(i,j-1);
            d=tlabels(i+1,j-1);
            e=tlabels(i+1,j);
            if image(i,j)==grays && (a>=0||b>=0||c>=0||d>=0||e>=0)                  
                x=[a b c d e] ;
                for i1=1:length(x)
                    if x(i1)==-1
                        x(i1)=inf;
                    end
                end
                x1=min(x);
                if x1~=inf
                    final(i,j)=x1;
                    flag=1;
                end
            end                     
        end
    end
    
    
  

