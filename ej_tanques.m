clc;
clear all;
close all;

P = zpk([], [-0.19 -1.31], 1);
C = zpk([-0.19 -1.31],[0 -1000], db2mag(114));
L = minreal(C*P);
Ts = 300-6;
Cd = c2d(C, Ts, 'tustin');
