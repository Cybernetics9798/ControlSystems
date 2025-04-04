clc;
clear;

load("exp2_lab4_proportional.mat");
time = simout.time();
time = time.';
value = simout.signals().values();
value = value.';
plot(time, value);
title("Step Reponse of Proportional Controller");
grid on;
grid minor;