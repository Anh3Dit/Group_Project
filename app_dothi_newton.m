function [x_values, y_values, a, result] = app_dothi_newton(xa, ya, a)
    %n = length(xa);

    % Tạo một dãy số x cho việc vẽ đồ thị
    x_values = linspace(min(xa), max(xa), 1000);

    % Tính giá trị của đa thức Newton tại các điểm x_values
    y_values = zeros(size(x_values));
    for i = 1:length(x_values)
        y_values(i) = Newton_Ghep(xa, ya, x_values(i));
    end

    % Tính giá trị nội suy Newton tại điểm a
    result = Newton_Ghep(xa, ya, a);

    % % Vẽ đồ thị
    % figure;
    % plot(x_values, y_values, 'r-', 'LineWidth', 2);
    % hold on;
    % plot(xa, ya, 'bo', 'MarkerSize', 8, 'MarkerFaceColor', 'b');
    % plot(a, result, 'go', 'MarkerSize', 8, 'MarkerFaceColor', 'g');
    % title('Newton Interpolation Polynomial');
    % xlabel('x');
    % ylabel('f(x)');
    % legend('f(x) Newton', 'Data Points', ['Interpolated Point at x = ' num2str(a)]);
    % grid on;
    % hold off;
end