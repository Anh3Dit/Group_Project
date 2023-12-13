function result = Newton_Ghep(xa, ya, x)
    n = length(xa);
    d = zeros(n, n);
    d(:, 1) = ya;

    % Tính tỷ hiệu cấp
    for j = 2:n
        for i = j:n
            d(i, j) = (d(i, j - 1) - d(i - 1, j - 1)) / (xa(i) - xa(i - j + 1));
        end
    end

    % Tính giá trị nội suy Newton
    result = d(1, 1);
    for i = 2:n
        term = 1;
        for j = 1:i-1
            term = term * (x - xa(j));
        end
        result = result + d(i, i) * term;
    end

    % % Vẽ đồ thị nội suy Newton với đoạn thẳng nối các điểm
    % % figure;
    % % plot(xa, ya, 'o-', 'MarkerFaceColor', 'b', 'MarkerEdgeColor', 'b', 'LineWidth', 2);
    % hold on;
    % 
    % %Vẽ đoạn thẳng nối các điểm
    % % for i = 1:n-1
    % %     line([xa(i), xa(i+1)], [ya(i), ya(i+1)], 'Color', 'b', 'LineStyle', '--');
    % % end
    % 
    % % Vẽ điểm nội suy
    % plot(x, result, 'r*', 'MarkerSize', 10);
    % 
    % % Vẽ đoạn thẳng nối điểm nội suy với điểm trước và sau nó
    % for i = 1:n-1
    %     if x >= xa(i) && x <= xa(i+1)
    %         line([x, xa(i)], [result, ya(i)], 'Color', 'g', 'LineStyle', '--');
    %         line([x, xa(i+1)], [result, ya(i+1)], 'Color', 'g', 'LineStyle', '--');
    %         break;
    %     end
    % end
    % 
    % title('Newton Interpolation');
    % xlabel('x');
    % ylabel('f(x)');
    % legend('Data Points (Interpolated Line)', 'Interpolated Point', 'Tangent Lines');
    % grid on;
    % hold off;

    % Vẽ đồ thị đa thức nội suy Newton
    % figure;
    % hold on;
    % 
    % % Tính giá trị nội suy Newton cho các điểm x
    % y_interp = zeros(size(xa));
    % for i = 1:n
    %     term = 1;
    %     for j = 1:i-1
    %         term = term * (x - xa(j));
    %     end
    %     y_interp(i) = d(i, i) * term;
    % end
    % 
    % % Vẽ đồ thị đa thức nội suy Newton
    % plot(x, result, 'r*', 'MarkerSize', 10);
    % plot(xa, y_interp, 'g--', 'LineWidth', 2);
    % 
    % title('Newton Interpolation Polynomial');
    % xlabel('x');
    % ylabel('f(x)');
    % legend('Interpolated Point', 'Interpolating Polynomial');
    % grid on;
    % hold off;

end