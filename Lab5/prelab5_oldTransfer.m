clc;
clear;

z = 6;
p = 9.38;
kc = 11.15;
kv = 6.98;

s = tf("s");
G = 4.7/(s*(s + 3.2));
Gc = kc*(s + z)/(s + p);
T = G*Gc/(1+G*Gc)
%T = feedback(Gc*G, 1);

rlocus(T);
grid on;
grid minor;