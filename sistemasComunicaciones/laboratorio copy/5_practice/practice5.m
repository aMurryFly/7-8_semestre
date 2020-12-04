%MATLAB BASICS | ALFONSO MV.
%Limpiamos comand, cerramos perfiles , limpiamos workspace
clc
close all
clear all

%General variables
%Frecuencia del coseno y seno
f1=100; 
f2=50; 
%frecuencia de muestreo, 10 veces la frecuencia máxima
fs=20*f1; 
%tiempo de muestreo=inverso de la frecuencia de muestreo
ts=1/fs; 
%vector de tiempo, de cero a un segundo, espaciamiento de ts
t=0:ts:1; 

%Declaración de la señal v(t)
v=20*cos(2*pi*f1*t)+10*sin(2*pi*f2*t);

%F1GURA 1
%Grafica de la señal v(t) en el dominio del tiempo
subplot(2,1,1)
plot(t,v) 
axis([0 0.1 -60 60]) %rango de los ejes
title('Gráfica de v(t)');%agrega título
xlabel('tiempo [s]'); % agregamos etiqueta en eje x
text(0.01,35,'Señal v(t)'); %texto en valores 

%Señal v(t) con ruido
r=randn(size(t)); %generación números aleatorios
vr=v+10*r; %variable aux para el factor de ruido

%apartado 7 
r1=rand(size(t));
vr1=v+10*r1;

%Graficar la señal vr(t) en el dominio del tiempo
subplot(2,1,2)
plot(t,vr) 
axis([0 0.1 -60 60])
title('Gráfica de vr=v(t)+r');
xlabel('tiempo [s]');
text(0.01,45,'Señal vr=v(t)+ruido');




%F1GURA 2
%Figura para obtener los espectros de magnitud v(t) y vr(t)
figure
%N, número de elementos de v
N=length(v); 
% Vector f para un espectro bilateral
f=-fs/2:fs/(N-1):fs/2;
Vf=(1/N)*fftshift(fft(v));

%Agregando lineas
VRf1 = (1/N)*fftshift(fft(vr1));

subplot(211)
plot(f,abs(Vf),'m');
title('Espectros de magnitud v(t)');
xlabel('frecuencia[Hz]');
ylabel('Amplitud');
axis([-150 150 0 15])
VRf=(1/N)*fftshift(fft(vr));

subplot(212)
plot(f,abs(VRf),'r');
title('Espectros de magnitud vr(t)');
xlabel('frecuencia[Hz]');
ylabel('Amplitud');
axis([-150 150 0 15]);




%F1GURA 3
%Figura para obtener los espectros de fase de v(t) y vr(t)
figure
subplot(2,1,1)
%Gráfica f contra V en grados
plot(f,angle(Vf)*180/pi,'b')
title('Fase de v(t)');
axis([-150 150 -200 200])
grid
subplot(2,1,2)
plot(f,angle(VRf)*180/pi)
title('Fase de vr(t)');
axis([-150 150 -200 200])
grid



%F1GURA 4
%Figura para observar ruido
figure

%señal de ruido normalizado con media cero
subplot(2,1,1)
plot(f,abs(VRf),'r'); 
axis([-150 150 0 15]);
title('Espectro de magnitud de la señal con ruido (randn)')
xlabel('frecuencia[Hz]');
ylabel('Amplitud');
grid on

%señal de ruido normalizado con media cero
subplot(2,1,2)
plot(f,abs(VRf1),'b'); 
axis([-150 150 0 15]);
title('Espectro de magnitud de la señal con ruido (rand)')
xlabel('frecuencia[Hz]');
ylabel('Amplitud');
grid on



