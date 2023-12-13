function result = noisuy_lagrange(x, y)
    n = length(x) - 1; % Bậc của đa thức
    result = 0;
    L = zeros(n+1, n+1); % Khởi tạo ma trận L
    for m = 1:n + 1
        p = 1;
        for k = 1:n + 1
            if k ~= m
                p = conv(p, [1, -x(k)]) / (x(m) - x(k));
            end
        end
        L(m, :) = p; % Đa thức Lagrange
        result = result + y(m) * p; % Hệ số của đa thức nội suy
    end
end
