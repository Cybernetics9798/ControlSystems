clc;
clear;

s0 = -13.33 + 18.19i;
p = 36.19;
z = 13.33;
p_lag = 0.01;
z_lag = 0.0965954347;

kc = abs((s0*(s0+p)*(0.1189*s0+1))/(29.25*(s0+z)));
kv = 29.89;

s = tf("s");
G = 29.25/(s*(0.1189*s + 1));
Gc = kc*(s + z)*(s + z_lag)/((s + p)*(s + p_lag));
T = feedback(Gc*G, 1);

% rlocus(T);

G_old = 29.25/(s*(0.1189*s + 1));
Gc_old = 2.7850*(s+z)/(s+p);
T_old = feedback(Gc_old*G_old, 1);

Reponse Comparsion
step(T);
hold on;
step(T_old);
legend("Lead System", "Lead-Lag System");
title("Step Response of the System");
hold off;

% Ramp Input Comparsion
t = 0:0.01:10;
lsim(T, t, t);
hold on;
lsim(T_old, t, t);
legend("Lead-Lag System", "Lead System");

grid on;
grid minor;