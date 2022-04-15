%% first Simulation
Sim_Time = 7;
Step_Value = 1;
M = 1;
b = 10;
k = 20;

%% Define P Controller Parameters
% Kp = 1000; %200, 500, 800, 1000
% Ki = 0; 
% Kd = 0;
% sim('Project7');

%% PID Controller
Kp = 350;
Ki = 300;
Kd = 50;
sim('Project7_Trial.slx');

%% Plotting section
figure
plot(ans.IN.time, ans.IN.data)
xlabel('Time');
ylabel('Position');
hold all
plot(ans.OUT.time, ans.OUT.data)
