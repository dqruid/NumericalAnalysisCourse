clc; 
clear all; 

% Defining the x-axis 
x = -pi:0.01:pi;
x = linspace(-pi, pi, 100);

y_sin = sin(x);
y_cos = cos(x);

% Figure 1 is sin(x)
f = figure(1);
set(f, 'Name', 'sin(x)');
handle_plot = plot(x, y_sin);
title('Sine Function');
grid on
xlabel('x-axis');
ylabel('sin(x)');
handle_legend = legend('$y=sin(x)$');
set(handle_legend, 'interpreter', 'latex', 'location', 'best');
set(handle_plot,'Color','red','LineWidth',1)


%Figure 2 is cos(x)
f = figure(2);
set(f, 'Name', 'cos(x)');
handle_plot = plot(x, y_cos);
grid on
title('Cos Function');
xlabel('x-axis');
ylabel('cos(x)');
handle_legend = legend('$y=cos(x)$');
set(handle_legend, 'interpreter', 'latex', 'location', 'best');
set(handle_plot,'Color','green','LineWidth',1)

% Figure3 is sin(x) and cos(x) on the same graph
f = figure(3);
set(f, 'Name', 'sin(x) & cos(x)');
plot(x, y_sin, '-', 'Color', 'red', 'DisplayName', 'sin(x)')     ;hold on;   % Plot # 1 
plot(x, y_cos, '--', 'Color', 'blue', 'DisplayName', 'cos(x)')    ;hold off;  % Plot # 2
grid on
title('Sin & Cos Function');
xlabel('x-axis');
ylabel('sin(x) & cos(x)');
legend('show');
figure(3);