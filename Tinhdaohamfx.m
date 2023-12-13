function df = Tinhdaohamfx(fx, h, x, pp, Saiso)
% Giả sử fx là 1 string
fx = str2func(['@(x)', fx]);
if pp == "Xấp xỉ tiến"
    if Saiso == "O(h)"
        df = (fx(x + h) - fx(x)) / h;
    else
        df = (-fx(x + 2*h) + 4*fx(x + h) - 3*fx(x)) / (2*h);
    end
elseif pp == "Xấp xỉ lùi"
    if Saiso == "O(h)"
        df = (fx(x) - fx(x - h)) / h;
    else
        df = (3*fx(x) - 4*fx(x - h) + fx(x - 2*h)) / (2*h);
    end
else
    if Saiso == "O(h^2)"
        df = (fx(x + h) - fx(x - h)) / (2*h);
    else
        df = (-fx(x + 2*h) + 8*fx(x + h) - 8*fx(x - h) + fx(x - 2*h)) / (12*h);
    end
end
end