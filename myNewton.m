function [ y ] = myNewton( x0,N, eps)
%Newton method for solving f(x)=0

% stopping criteria | x_n+1-x_n|< eps
     if df(x0)==0
          display('Method failed')
          return
     else
         display(' We are on track')
     end
     
     
     
% The actual method start here

% Initial condition for while loop
i = 1;

% Suppose the initial error
error = 1;

% While loop
        while  ( i<=N & error>eps )
                 i = i+1;
                 x = x0 - f(x0)/df(x0);
                 error = abs(x-x0);
                 x0 = x;
        end


% Print the desired outpur
        if  ( x-x0<eps )
             fprintf('Found the root %12.10f after %d iterations.\n', x, i-1);
        else
             fprintf('Method failed after %d iterations', i);
        end

        
end

