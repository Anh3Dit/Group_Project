function result = TichPhanHinhThangxy(x,y)
    n = length(x) - 1;
    a = x(1);
    b = x(n+1);
    sum = y(1) + y(n+1);
    for i = 2:n
        sum = sum + 2*y(i);
    end
    result = (b-a)/(2*n)*sum;
end