% exemplu
F = 50;
figure(1)
t = 0:0.001:0.2;
s = 2*sin(2*pi*F*t);
T1_ex5func_Draghici_Diana(t,s,0) %nu e semnal cosinusoidal

% modificam t la 0.01, graficul nu mai este sinusoidal fata de cel initial

figure(2)
t = 0:0.01:0.2;
s = 2*sin(2*pi*F*t);
T1_ex5func_Draghici_Diana(t,s,0)  %nu e semnal cosinusoidal

%  modific t la 0.0002
figure(3)
t = 0:0.0002:0.2;
s = 2*sin(2*pi*F*t);
T1_ex5func_Draghici_Diana(t,s,0)  %nu e semnal cosinusoidal

% semnal cosinusoidal de frecventa 20 Hz
figure(4)
F = 20;
t = 0:0.001:0.2;
s = 2*cos(2*pi*F*t);
T1_ex5func_Draghici_Diana(t,s,1);  %este  semnal cosinusoidal