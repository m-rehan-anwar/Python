
% Prompt user for a function and create an anonymous function
fn = input('Enter function of x (e.g., @(x) x.^2 - 2): ');

% Prompt user for interval values
a = input('Enter left interval value: ');
b = input('Enter right interval value: ');
error = input('Enter Error value (e.g., 0.01): ');

% Initial guess
x0 = a;
x1 = b;

n = 10;
if fn(x1)-fn(x0) ~=0
    for i = 2:n
        x2 = ((x0*fn(x1))-(x1*fn(x0))) / (fn(x1)-fn(x0));
        fprintf('x%d = %.4f\n', i, x2);
        if abs(x2-x1) < error
            break
        end
        if (fn(x1)- fn(x0))== 0
            disp('Secant Method fail')
        end
        x0 = x1;
        x1 = x2;
    end
else
    disp("Secant Method fail");
end
