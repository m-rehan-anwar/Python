syms x;  % Define a symbolic variable

% Prompt user for a function and create an anonymous function
funcInput = input('Enter function of x (e.g., @(x) x.^2 - 2): ');
f_sym = funcInput(x);  % Convert to symbolic function

% Compute the derivative
df = diff(f_sym, x);  % Compute the derivative
disp('The derivative is:');
disp(df);  % Display the derivative

% Convert symbolic functions to function handles for numerical evaluation
f_handle = matlabFunction(f_sym);
df_handle = matlabFunction(df);

% Prompt user for interval values
a = input('Enter left interval value: ');
b = input('Enter right interval value: ');
error = input('Enter Error value (e.g., 0.01): ');

% Initial guess
x0 = (a + b) / 2;

n = 10;
if df_handle(x0) ~=0
    for i = 1:n
        x1 = x0 - (f_handle(x0)/df_handle(x0));
        fprintf('x%d = %.4f\n', i, x1);
        if abs(x1-x0) < error
            break
        end
        if df_handle(x1)== 0
            disp('newton Method fail')
        end
        x0 = x1;
    end
else
    disp("Newton Method fail");
end
