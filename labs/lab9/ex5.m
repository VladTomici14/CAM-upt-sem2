% ----------------
% ----- EX 5 -----
% ----------------

% ----- defining the constants -----
m1 = 10;      % kg
m2 = 4.15;    % kg
m3 = 0.5;     % kg
J3 = 0.015;   % kg*m^2
g = 9.81;     % m/s^2
tspan = [0 3];

% ----- setting the initial conditions -----
% [q1, q1_dot, q2, q2_dot, q3, q3_dot]
y0 = [0; 2; 1; -1; -0.5; 0];

% ----- system of ODEs -----
robotODE = @(t, y) [
    y(2); % dq1/dt = q1_dot
    (-58.6*sin(2*t)) / (m1 + m2 + m3); % d(q1_dot)/dt
    y(4); % dq2/dt = q2_dot
    (23.25*exp(-t)*(sin(4*t) - 3*cos(4*t)) + 45.601 - (m2+m3)*g) / (m2 + m3); % d(q2_dot)/dt
    y(6); % dq3/dt = q3_dot
    (0.004*t.^2) / J3 % d(q3_dot)/dt
];

% ----- solving -----
[t, y] = ode45(robotODE, tspan, y0);

% ----- plotting -----
figure;
plot(t, y(:,1), 'r', 'DisplayName', 'q_1(t)');
hold on;
plot(t, y(:,3), 'g', 'DisplayName', 'q_2(t)');
plot(t, y(:,5), 'b', 'DisplayName', 'q_3(t)');
xlabel('Time (s)');
ylabel('Generalized Coordinates');
title('Variation of the Generalized Coordinates vs Time');
legend show;
grid on;
