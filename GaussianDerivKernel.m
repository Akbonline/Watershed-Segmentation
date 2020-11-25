%% Gaussian Derivative Kernel
% Sigma value = 0.6 (arg provided to make a generic function)

function [gaussDeriv,cols] = GaussianDerivKernel(sigVal)
    total=0;
    gaussDeriv=[];
    % sigma 0.6 
    x=round((2*sigVal)-0.5);
    cols=2*x+1;
    for i=1:cols
        gauss1=-1*(i-1-x)*exp((-1*(i-1-x)*(i-1-x))/(2*sigVal*sigVal));
        total=total-(i*gauss1);
        gaussDeriv=[gaussDeriv gauss1];
    end
    gaussDeriv=gaussDeriv/total;
    gaussDeriv=flip(gaussDeriv); 
end

