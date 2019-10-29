%E5
f = 50;
t = 0:0.01:0.2;
x = 2*sin(2*pi*f*t);
figure
plot(t,x,'.-'),xlabel('timp [s]'),grid 
figure
t = 0:0.0002:0.2;
x = 2*sin(2*pi*f*t); 
plot(t,x,'.-'),xlabel('timp [s]'),grid    
hold on;
% avand in vedere frecventa semnalului f=50Hz => o variatie a semnalului
% de 1/50=0.02; Alegand pasul temporar de 0.01 este mai mare decat 0.02
% in concluzie pasul variabilei temporare trebuie ales mai mic decat variatia
% semnalului (in cazul semnalului s, mai mic de 0.02);
f=20;
x=2*cos(2*pi*f*t);
plot(t,x,'-'),xlabel('timp [s]'),grid  