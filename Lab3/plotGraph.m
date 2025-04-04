clc;
clear;

load("exp3_final.mat");
time = Step_Resp.time();
time = time.';
value = Step_Resp.signals().values();
value = value.';
plot(time, value);
title("Step Response with P.O.<10%");
grid on;
grid minor;