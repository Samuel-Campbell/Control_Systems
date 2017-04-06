%% P_Controller
m = 0.11;
R = 0.015;
D = 0.03;
g = 9.8;
L = 1.0;
J = 9.99e-6;
s = tf('s');
P_ball = m*g*D/L/(J/R^2+m)/s^2;
final = 0.75;

Kp = 0.5;
Kd = 0.5;
C = pid(Kp, 0, Kd);
sys_cl=feedback(C*P_ball,1);

step(final*sys_cl);
axis([0 70 0 1.5]);