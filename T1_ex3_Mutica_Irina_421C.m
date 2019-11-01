%3. Semnal dreptunghiular multinivel, aleator
% Durata fiecãrui nivel: 0,25 s.
% Nivelurile
%a) {-1, 1}
%b) {-3,-1,1,3}
%c) {-5,-3,-1,1,3,5}
%d) {-7,-5,-3,-1,1,3,5,7} 

%a
%rez 2ms
trepte=[-1 1];
T=length(trepte)*0.25;
rez=0.002;
t=rez:rez:T;
vct=semn(rez,trepte);
subplot(3,1,1),plot(t,vct),grid,title('a. Rezolutie 2ms');
%rez 20ms
trepte=[-1 1];
T=length(trepte)*0.25;
rez=0.02;
t=rez:rez:T-rez;
vct=semn(rez,trepte);
subplot(3,1,2),plot(t,vct),grid,title('a. Rezolutie 20ms');
%rez 200ms
trepte=[-1 1];
T=length(trepte)*0.25;
rez=0.2;
t=rez:rez:T;
vct=semn(rez,trepte);
subplot(3,1,3),plot(t,vct),grid,title('a. Rezolutie 200ms');

%b
figure
%rez 2ms
trepte=[-3 -1 1 3];
T=length(trepte)*0.25;
rez=0.002;
t=rez:rez:T;
vct=semn(rez,trepte);
subplot(3,1,1),plot(t,vct),grid,title('b. Rezolutie 2ms');
%rez 20ms
trepte=[-3 -1 1 3];
T=length(trepte)*0.25;
rez=0.02;
t=rez:rez:T-2*rez;
vct=semn(rez,trepte);
subplot(3,1,2),plot(t,vct),grid,title('b. Rezolutie 20ms');
%rez 200ms
trepte=[-3 -1 1 3];
T=length(trepte)*0.25;
rez=0.2;
t=rez:rez:T-rez;
vct=semn(rez,trepte);
subplot(3,1,3),plot(t,vct),grid,title('b. Rezolutie 200ms');

%c
figure
%rez 2ms
trepte=[-5 -3 -1 1 3 5];
T=length(trepte)*0.25;
rez=0.002;
t=rez:rez:T;
vct=semn(rez,trepte);
subplot(3,1,1),plot(t,vct),grid,title('c. Rezolutie 2ms');
%rez 20ms
trepte=[-5 -3 -1 1 3 5];
T=length(trepte)*0.25;
rez=0.02;
t=rez:rez:T-3*rez;
vct=semn(rez,trepte);
subplot(3,1,2),plot(t,vct),grid,title('c. Rezolutie 20ms');
%rez 200ms
trepte=[-5 -3 -1 1 3 5];
T=length(trepte)*0.25;
rez=0.2;
t=rez:rez:T-rez;
vct=semn(rez,trepte);
subplot(3,1,3),plot(t,vct),grid,title('c. Rezolutie 200ms');

%d
figure
%rez 2ms
trepte=[-7 -5 -3 -1 1 3 5 7];
T=length(trepte)*0.25;
rez=0.002;
t=rez:rez:T;
vct=semn(rez,trepte);
subplot(3,1,1),plot(t,vct),grid,title('d. Rezolutie 2ms');
%rez 20ms
trepte=[-7 -5 -3 -1 1 3 5 7];
T=length(trepte)*0.25;
rez=0.02;
t=rez:rez:T-4*rez;
vct=semn(rez,trepte);
subplot(3,1,2),plot(t,vct),grid,title('d. Rezolutie 20ms');
%rez 200ms
trepte=[-7 -5 -3 -1 1 3 5 7];
T=length(trepte)*0.25;
rez=0.2;
t=rez:rez:T-2*rez;
vct=semn(rez,trepte);
subplot(3,1,3),plot(t,vct),grid,title('d. Rezolutie 200ms');
