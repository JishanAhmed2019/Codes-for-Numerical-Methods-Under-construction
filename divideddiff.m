function p= divideddiff(u)
%P(u)is approximated here at u=-1
n=4;
x=[1 3 -1 -2]';
y=[2 28 0 7]';
F = zeros(n, n);
    for i = 1:n  
        F(i,1) = y(i);
    end
    for k = 1:n-1   
        for i = 1:n-k
            F(i,k+1) = (F(i+1,k)-F(i,k))/(x(i+k)-x(i))% Divided difference table
        end
    end
    p = F(1,n);  
    for i = n-1:-1:1
        p = F(1,i) + (u-x(i))*p; % nested formula
    end
end


