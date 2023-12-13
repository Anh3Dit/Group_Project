function [c,n]= ChiaDoi(fx,a,b,saisochophep)
%c nghiem
%n so lan lap
fx = str2func(['@(x)',fx]);
n=0;
while(1)
    c=(a+b)/2;
    fcfa=fx(a)*fx(c);
    n=n+1;
    if (fcfa < 0 && b~=c)
        b=c;
    elseif(fcfa >0 && a~=c)
        a=c;
    else
        c=a;
        break;
    end
    e = abs(b-a) ;
    if e < saisochophep
        break;
    end
end
end