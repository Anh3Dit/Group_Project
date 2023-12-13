function [a, b] = Hammu(x, y)
    n = length(x);
    XX = log10(x);
    YY = log10(y);
    sumx = 0;
    sumy = 0;
    sumxy = 0;
    sumx2 = 0;
    st = 0;
    sr = 0;
    
    for i = 1:n
        sumx = sumx + XX(i);
        sumy = sumy + YY(i);
        sumxy = sumxy + XX(i) * YY(i);
        sumx2 = sumx2 + XX(i)^2;
    end

    xm = sumx / n;
    ym = sumy / n;

    A = (n * sumxy - sumx * sumy) / (n * sumx2 - sumx^2);
    B = ym - A * xm;

    for i = 1:n
        st = st + (YY(i) - ym)^2;
        sr = sr + (YY(i) - A * XX(i) - B)^2;
    end
  
    b = A;
    a = 10^B;
end