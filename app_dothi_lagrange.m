function [x_values, y_values, a, result] = app_dothi_lagrange(xa, ya, a)
    n = length(xa);

    % Tạo một dãy số x cho việc vẽ đồ thị
    x_values = linspace(min(xa), max(xa), 1000);

    % Tính giá trị của đa thức Lagrange tại các điểm x_values
    y_values = zeros(size(x_values));
    for i = 1:n
        term = ya(i);
        for j = 1:n
            if j ~= i
                term = term .* (x_values - xa(j)) / (xa(i) - xa(j));
            end
        end
        y_values = y_values + term;
    end
    result = lagrange(a, xa, ya);
    % % Vẽ đồ thị
    % figure;
    % plot(x_values, y_values, 'r-', 'LineWidth', 2);
    % hold on;
    % plot(xa, ya, 'bo', 'MarkerSize', 8, 'MarkerFaceColor', 'b');
    % plot(a, result, 'go', 'MarkerSize', 8, 'MarkerFaceColor', 'g');
    % title('Lagrange Interpolation Polynomial');
    % xlabel('x');
    % ylabel('f(x)');
    % legend('f(X) Lagrange', 'Data Points');
    % grid on;
    % hold off;
end