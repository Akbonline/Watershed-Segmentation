function [Edges,supress,magnitude1] = cannyedge(gaussKernel,gaussDerivKernel,image,rows,cols)
    %% Canny Edge Detection 
    % Calculate the horizental and vert intensity changes
    % Calculate the magitude and angle
    % Convert from radian to degree concersion
    % Make angle positive 
    % Non Maximal Suppression
    % Compute Hysteresis
    % Link the Edges 
    [magnitude,Gradient,hori,vert,temp_horiz,temp_vert] = MagnitudeGradient(gaussKernel,gaussDerivKernel,image,rows,cols);
    magnitude1=magnitude;
    for i=1:rows
        for j=1:cols
            if Gradient(i,j)<0
                Gradient(i,j)=Gradient(i,j)+pi;
                Gradient(i,j)=(180/pi)*Gradient(i,j);
            else 
                 Gradient(i,j)=(180/pi)*Gradient(i,j);
            end
        end
    end 
    [supress] = NonMaxSuppression(magnitude,Gradient,rows,cols);
    [hysteresis] = Hysteresis(supress);
    [Edges] = edge_linking(hysteresis);
end

