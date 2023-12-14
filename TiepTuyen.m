function [x1,n]= TiepTuyen(fx,a,b,saisochophep)


fx = str2sym(fx);
f1x = diff(fx);
f2x = diff(f1x);
fx = matlabFunction(fx);
f1x = matlabFunction(f1x);
f2x = matlabFunction(f2x);
n=0;

%chọn x0 có thể chọn bất kì 
%cách chọn x0 thầy chỉ
x0 = a;
if (fx(x0)*f2x(x0)<0)
    x0=b;
end

while(1)
    n=n+1;
    %tính x1
    x1= x0-(fx(x0)/f1x(x0));
    %đk thoát
    e = abs(x1-x0) ;
    if e < saisochophep
        break;
    end
    %capnhat x0
    x0=x1;
end
end

