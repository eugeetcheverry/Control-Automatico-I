num = [1 2 1];
den = [1 1 3 1];

T = tf(num, den);

%Rta al escalon
figure;
subplot(2, 2, 1);
step(T);
title("Rta al escalon");
xlabel("tiempo");
ylabel("amplitud");

%Rta rampa
t = 0:0.01:10; %defino intervalo de tiempo
rampa = t;
[rta_rampa, t_rampa] = lsim(T, rampa, t); 
subplot(2, 2, 2);
plot(rta_rampa, t_rampa);
title("Rta rampa");
xlabel("tiempo");
ylabel("amplitud");

%Rta parabolica
t = 0:0.01:10; %defino intervalo de tiempo
parabola = 0.5*t.^2;
[rta_par, t_par] = lsim(T, parabola, t); 
subplot(2, 2, 3);
plot(rta_par, t_par);
title("Rta parabola");
xlabel("tiempo");
ylabel("amplitud");

sgtitle("Respuestas del sistema a diferentes entradas");


