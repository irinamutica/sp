%5. Semnal sinusoidal redresat dublã alternanþã
% Perioada semnalului sinusoidal neredresat: 4 s.
% Amplitudine: 1.5. 
T = 4;
F = 1/T;

t = 0:0.002:8;
x = 1.5*sin(2*pi*F*t); %semnalul are forma amplitutdine*sin(2piFt)
subplot(3,2,3),plot(t,x),grid,title('Semnal initial'),axis([0 8 -2 2]);
x = redresare_da(x); %folosesc functia predefinita pentru a genera semnalul dublu alternat
%afisez in aceeasi fereastra semnalul initial si cele 3 semnale redresate
subplot(3,2,2),plot(t,x),grid,title('Rezolutie 2ms'),axis([0 8 -2 2]);

t = 0:0.02:8;
x = 1.5*sin(2*pi*F*t);
x = redresare_da(x);
subplot(3,2,4),plot(t,x),grid,title('Rezolutie 20ms'),axis([0 8 -2 2]);

t = 0:0.2:8;
x = 1.5*sin(2*pi*F*t);
x = redresare_da(x);
subplot(3,2,6),plot(t,x),grid,title('Rezolutie 200ms'),axis([0 8 -2 2]);