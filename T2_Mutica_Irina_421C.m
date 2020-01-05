%Mutica Irina Georgia, 421C, nr. de ordine 16

N = 50; % numarul de coeficienti
D = 16; % durata de crestere = nr de ordine
P = 40; % perioada
F=1/P; % frecventa
w0=2*pi/P; % pulsatia
r=0.02; % rezolutia
t=0:r:P-r; % vectorul timp pentru o perioada
 
%constructia unei perioade a semnalului
x = zeros(1,size(t,2)); % initializarea lui x cu zerouri
for i=0 : 1 : D/r
   x(i+1) = 1 - 1/16*i*r ; %unde 16 e D, durata de crestere
end
 
m=0
for i=(P-D)/r : 1 : P/r    
    x(i) = 1/16 * m * r;
    m=m+1;
end
 
%reprezentarea unei perioade a semnalului
figure(1), plot(t,x)
 
t_4p = 0:r:4*P-r; % vectorul timp pentru 4 perioade
x_4p = repmat(x,1,4); % replicarea matricii pentru generarea a 4 perioade ale semnalului
 
%reprezentarea a 4 perioade ale semnalului
figure(2),plot(t_4p,x_4p)
grid on
 
% determinarea coeficientilor fourier
for k = -N:N   %pt un N mai mare, reprezentarea semnalului este mai precisa
    a = x;
    a = a.*exp(-j*k*w0*t);
    X(k+51) = trapz(t,a); % calculam integrala cu metoda trapezului (metoda convenabila aici)
end
 
x_refacut(1:length(t)) = 0; % initializarea semnalului reconstruit cu N puncte
 
%reconstructia lui x(t) folosind N coeficienti:
for i = 1:length(t);
for k = -N:N
x_refacut(i) = x_refacut(i) + (1/P)*X(k+N+1)*exp(j*k*w0*t(i));
end
end
 
figure(3); %prin zoom in se vede mult mai bine cum arata de fapt semnalul,
           %dar am ales aceasta scala pentru a se vedea mai bine rezultatul
           %final si cum se apropie de cel original

plot(t_4p,x_4p); % afisam x(t) - 4 perioade
title('x(t) cu linie solida si reconstructia folosind N=50 coeficienti(linie punctata)');
hold on
x_refacut_4p = repmat(x_refacut,1,4); % replicam matricea pentru generarea a 4 perioade
plot(t_4p,x_refacut_4p,'--'), legend('Semnal initial','Semnal refacut'); % afisam semnalul x refacut
xlabel('Timp [s]');
ylabel('Amplitudine [V]');
 
f = -N*F:F:N*F; % vectorul de frecvente
 
figure(4), stem(f,abs(X)), title('Spectrul lui x(t)'), xlabel('Frecventa [Hz]'), ylabel('|X|');

%Seriile Fourier sunt o unealta matematica folosita pentru a analiza
%functiile periodice descompunandu-le intr-o suma ponderata de functii sinusoidale.
%Fiecare functie sinusoidala are un coeficient(pondere).
%Reprezentarea spectrala ne arata frecventele si ponderile sinusoidelor prin care poate
%fi aproximat semnalul.
%Semnalul reconstruit pe baza coeficientilor Fourier devine din ce in ce mai
%apropiat de semnalul original, cu cat sunt luati in considerare mai multi
%termeni ai dezvoltarii.