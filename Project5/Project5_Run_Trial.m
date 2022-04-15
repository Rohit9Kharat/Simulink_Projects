%% Load the data
Data = xlsread('Battery_Parameters.xlsx');

%% Name the data
SOC = Data(:, 1);
OCV = Data(:, 2);
R_Charge = Data(:, 3);
R_Discharge = Data(:, 4);

%% Plot the data
plot(SOC, OCV);

figure;
plot(SOC, R_Charge);

figure;
plot(SOC, R_Discharge);

%% Define the parameters
I = 2.3;
Cn = 2.3*3600; % capacity (Amps secs)
Sim_TIME = 3600;

%% Run simulation
sim('Project5_Trial.slx');