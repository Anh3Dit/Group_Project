function [tphan] = Tinhtichphan(fx,a,b,N,pp)
    fxi=str2func(['@(x)',fx]);
    if pp == 'Hình thang'
        tphan = TichPhanHinhThang(fx,a,b,N);
    elseif pp =='Simpson1/3'
        tphan = TichPhanSimpson13(fx,a,b,N);
    else
        tphan = TichPhanSimpson38(fx,a,b,N);
    end
end