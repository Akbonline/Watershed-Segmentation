%% magnitude grad: Contains implementations for both horizontal and vertical Gradients
% Step 1: Calculate vertical and horizontal Gaussian kernel and
% derivatives
% Step 2: Calculating magnitude and angle
% Step 3: Using the Magnitude and Gradient Image pseudocode from the slides
% Step 4: Returning all the calculated values
function [magnitude,grad,horizontal,vertical,horizontal1,vertical1] = MagnitudeGradient(Gaussian_kernel,Gaussian_Deriv_kernel,image,rows,cols)
    T=transpose(Gaussian_kernel); 
    H1=Convolve(image,T);
    for x=1:rows
     for y=1:cols
         horizontal1(x,y)=H1(x,y);         
     end
    end
    horizontal=Convolve(horizontal1,Gaussian_Deriv_kernel);
    T1=transpose(Gaussian_Deriv_kernel);
    H2=Convolve(image,Gaussian_kernel);
    for x=1:rows
     for y=1:cols
         vertical1(x,y)=H2(x,y);         
     end
    end
    vertical=Convolve(vertical1,T1);
    magnitude=zeros(rows,cols);
    grad=zeros(rows,cols);
    for x=1:rows
        for y=1:cols
            magnitude(x,y)=sqrt(horizontal(x,y).^2+vertical(x,y).^2);
            grad(x,y)=atan2(horizontal(x,y),vertical(x,y));
        end
    end
end

