function y = TichPhanHinhThang(fx, a, b, N)
    fxi=str2func(['@(x)',fx]);
    h=(b-a)/N;
    s=0.5*(fxi(a)+fxi(b));
    for i=1:N-1
        s=s+fxi(a+i*h);
    end
    y=h*s;
end

