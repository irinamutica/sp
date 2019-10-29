%Se va genera un semnal cu rezolutie temporara de 2ms, 20ms
%200ms pentru un semnal continuu de tipul:

%1. Semnal dreptunghiular periodic cu
%? Perioadã: 2 s.
%? Factor de umplere: 25%.
%? Nivel maxim: +0.5.
%? Nivel minim: -1.

%rezolutie temporara de 2ms
T = 2; %perioada in secunde
F = 1/T; %frecventa semnalului
%semnalul are componenta continua 0.25
%amplitudinea semnalului fara componenta continua=0.75
t = 0:0.002:5; %vectorul pentru timp cu o rezolutie de 0.002s = 2 ms
x = square(2*pi*F*t, 25); %functia square genereaza un semnal cu factor de 
                          % umplere de 25%
x = halfampl(x); %functie pentru scaderea amplitudinii maxime la jumatate

subplot(3,1,1),plot(t,x,'.-'), grid, title('Rezolutie 2ms');


t = 0:0.02:5;
x = square(2*pi*F*t, 25);
x = halfampl(x);

subplot(3,1,2),plot(t,x,'.-'),grid, title('Rezolutie 20ms');

t = 0:0.2:5;
x = square(2*pi*F*t, 25);
x = halfampl(x);

subplot(3,1,3),plot(t,x, '.-'),grid, title('Rezolutie 200ms');