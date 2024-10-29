% Prompt user for a function and create an anonymous function
funcInput = input('Enter function of x (e.g., @(x) x.^2 + 3*x + 2): ');
f = funcInput;  % Create the function handle

% Prompt user for interval values
a = input('Enter left interval value: ');
b = input('Enter right interval value: ');
error = input('Enter Error value (e.g, 0.01): ');

if f(a) * f(b) < 0
    iteration = 0; % Initialize iteration counter
    while (b - a) > error
        c = (a + b) / 2;
        iteration = iteration + 1; % Increment iteration counter
        fprintf('P%d = %.4f\n', iteration, c);
        
        if f(a) * f(c) < 0
            b = c; % Update right endpoint
        elseif f(b) * f(c) < 0
            a = c; % Update left endpoint
        end
    end
    fprintf('Approximate root: %.4f\n', (a + b) / 2);
else
    disp("No root in the given interval");
end
