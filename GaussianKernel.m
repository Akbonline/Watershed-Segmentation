%% gaussaussian Kernel
% sigaussVal = 0.6
%
function [gauss,width] = GaussianKernel(sigVal)
    x=round((2*sigVal)-0.5);
    width=2*x+1;
    total=0;
    gauss=[];
    for i=1:width
        gauss1=exp((-1*(i-1-x)*(i-1-x))/(2*sigVal*sigVal));
        total=total+gauss1;
        gauss=[gauss gauss1];
    end
    gauss=gauss/total;
end


