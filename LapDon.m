function [x1,n]= LapDon(fx,fp,a,b,saisochophep)
%fp là hàm lặp hội tụ
fx = str2func(['@(x)',fx]);
fp =str2func(['@(x)',fp]);
n=0;

%chọn x0 có thể chọn bất kì 
%cách chọn x0 thầy chỉ
c=(a+b)/2;
if (fx(a)*fx(c)< 0)
    x0= a;
else
    x0=b;
end

while(1)
    n=n+1;
    %tính x1
    x1= fp(x0);
    %đk thoát
       e = abs(x1-x0) ;
    if e < saisochophep
        break;
    end
    %capnhat x0
    x0=x1;
end
end

