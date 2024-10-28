% Trajectory of a projectile 
clear
clc
% Input initial conditions
initial_velocity = input('Enter the initial velocity in m/s: ');
launch_angle = input('Enter the launch angle in degrees: ');

% Constants
g = 9.81; % Gravitational acceleration in m/s^2

% Convert angle to radians
theta = deg2rad(launch_angle);

% Calculate initial velocity components
v_x = initial_velocity * cos(theta); % Horizontal component of velocity
v_y = initial_velocity * sin(theta); % Vertical component of velocity

% Calculate time of flight, range, and maximum height
time_of_flight = 2 * v_y / g;
range = v_x * time_of_flight;
max_height = (v_y^2) / (2 * g);

% Time vector for trajectory calculation
t = linspace(0, time_of_flight, 500);

% Calculate trajectory
x = v_x * t;                 % Horizontal distance
y = v_y * t - 0.5 * g * t.^2; % Vertical distance

% Plotting the trajectory
figure;
plot(x, y, 'b', 'LineWidth', 1.5);
hold on;
plot(range, 0, 'ro', 'MarkerSize', 8);       % Mark range
plot(range/2, max_height, 'ko', 'MarkerSize', 8); % Mark max height

% Adding labels and title
xlabel('Horizontal Distance (m)');
ylabel('Vertical Distance (m)');
title('Projectile Trajectory');
legend('Trajectory', 'Range', 'Max Height', 'Location', 'Best');
grid on;
axis equal;

% Display results
fprintf('Time of Flight: %.2f seconds\n', time_of_flight);
fprintf('Range: %.2f meters\n', range);
fprintf('Maximum Height: %.2f meters\n', max_height);
