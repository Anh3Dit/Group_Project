function y = Taylorapp(xa, ya, x, pp, Saiso)
n = length(xa);
h = (xa(n) - xa(1))/(n - 1);
nx = int8((x - xa(1))/h + 1);
if pp == "Xấp xỉ tiến"
    if Saiso == "O(h)"
        y = (ya(nx + 1) - ya(nx)) / h;
    else
        y = (-ya(nx + 2) + 4*ya(nx + 1) - 3*ya(nx)) / (2*h);
    end
elseif pp == "Xấp xỉ lùi"
    if Saiso == "O(h)"
        y = (ya(nx) - ya(nx - 1)) / h;
    else
        y = (3*ya(nx) - 4*ya(nx - 1) + ya(nx - 2)) / (2*h);
    end
else
    if Saiso == "O(h^2)"
        y = (ya(nx + 1) - ya(nx - 1)) / (2*h);
    else
        y = (-ya(nx + 2) + 8*ya(nx + 1) - 8*ya(nx - 1) + ya(nx - 2)) / (12*h);
    end
end
end