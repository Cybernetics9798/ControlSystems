clc;
clear;

s0 = -13.33 + 18.19i;
p = 36.19;
z = 13.33;

Kc = abs((s0*(s0+p)*(0.1189*s0+1))/(29.25*(s0+z)));

s = tf("s");
G = 29.25/(s*(0.1189*s + 1));
Gc = 2.7850*(s+z)/(s+p);
T = feedback(Gc*G, 1);
po = pole(T);
ze = zero(T);

% rlocus(T);
% 
% pzmap(T);

figure;
step(T);
title("Step Response of the System")
grid on