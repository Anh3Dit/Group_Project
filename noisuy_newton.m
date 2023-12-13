function result = noisuy_newton(x, y)

    N = length(x) - 1;
    DD = zeros(N + 1, N + 1);
    DD(1:N + 1, 1) = y';

    for k = 2:N + 1
        for m = 1: N+2-k
            DD(m,k)=(DD(m+1,k-1)-DD(m,k-1))/(x(m+k-1)-x(m));
        end
    end

    a = DD(1, :);
    result = a(N+1);

    for k = N:-1:1
        result = [result a(k)] - [0 result*x(k)];
    end
end
