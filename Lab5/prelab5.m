clc;
clear;

z = 6;
p = 9.38;
z_lag = 0.6663;
p_lag = 0.1;
kc = 11.15;
kv = 69.8;

s = tf("s");
G = 4.7/(s*(s + 3.2));
Gc = kc*(s + z)*(s + z_lag)/((s + p)*(s + p_lag));
T = feedback(Gc*G, 1);

rlocus(T);
grid on;
grid minor;