function result = lagrange(a, x, y)
    n = length(x) - 1; % Bậc của đa thức
    sum = 0;
    L = zeros(n+1, n+1); % Khởi tạo ma trận L
    for m = 1:n + 1
        p = 1;
        for k = 1:n + 1
            if k ~= m
                p = conv(p, [1, -x(k)]) / (x(m) - x(k));
            end
        end
        L(m, :) = p; % Đa thức Lagrange
        sum = sum + y(m) * p; % Hệ số của đa thức nội suy
    end
    result = polyval(sum, a);
end