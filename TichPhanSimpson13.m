function y = TichPhanSimpson13(fx, a, b, N)
    fxi=str2func(['@(x)',fx]);
    h=(b-a)/N;
    s=fxi(a)+fxi(b);
    for i=1:2:N-1
        s=s+4*fxi(a+i*h);
    end
    for i=2:2:N-2
        s=s+2*fxi(a+i*h);
    end
    y=h/3*s;
end

