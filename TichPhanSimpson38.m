function y = TichPhanSimpson38(fx,a,b,N)
    fxi=str2func(['@(x)',fx]);
    h=(b-a)/N;
    sum_1 = 0;
    sum_2 = 0;
    sum_3 = 0;
    for i = 1:N-1
        xi = a + i*h;
        if mod(i,3) == 1
            sum_1 = sum_1 + fxi(xi);
        elseif mod(i,3) == 2
            sum_2 = sum_2 + fxi(xi);
        else
            sum_3 = sum_3 + fxi(xi);
        end
    end
    y = (3*h/8) * (fxi(a) + 3*sum_1 +3*sum_2 + 2*sum_3 +fxi(b));
end