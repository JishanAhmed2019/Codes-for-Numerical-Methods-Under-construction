function [recy] = sinxapprox( x,n )
% Approximate Sinx using Maclaurin
y=x;
recy=y;
for i=2:1:n
    y = ((-x*x)*y)/((2*i-1)*(2*i-2));
    recy=recy+y;
end
end
