clc;
clear;

load("Ramp_Input.mat");
time = Ramp_Input.time();
time = time.';
value = Ramp_Input.signals().values();
value = value.';
plot(time, value);
hold on;

load("Ramp_Response.mat");
time = Ramp_Resp.time();
time = time.';
value = Ramp_Resp.signals().values();
value = value.';
plot(time, value);

legend("Input", "Output Reponse")
title("Ramp Input and Response of the System");
grid on;
grid minor;