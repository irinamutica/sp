%E4
%a)
z=zeros(1,21);  
z(6)=1;         
subplot(1,2,1) 
n=0:20;
%desenez discret vectorul z in punctele lui n
stem(n,z)   
subplot(1,2,2)
m=-5:15;
%desenez discret vectorul z in punctele lui m
stem(m,z)  
%b)
t=abs(10-n);
figure
%desenez discret vectorul t in punctele din n
stem(n,t); 
%c)
 %figura 1
n=-15:25;   
x1=sin(pi/17*n);  
figure
plot(n,x1)
hold on %desenarea pe acelasi grafic
n=0:50;
x2=cos(pi/sqrt(23)*n);
plot(n,x2);
 %figura 2
figure
subplot(2,1,1)
n=-15:25;
x1=sin(pi/17*n);
plot(n,x1)
n=0:50;
x2=cos(pi/sqrt(23)*n);
subplot(2,1,2)
plot(n,x2)
%figura 1 cu stem
n=-15:25;   
x1=sin(pi/17*n);  
figure
stem(n,x1)
hold on 
n=0:50;
x2=cos(pi/sqrt(23)*n);
stem(n,x2);
%figura 2 cu stem
figure
subplot(2,1,1)
n=-15:25;
x1=sin(pi/17*n);
stem(n,x1)
n=0:50;
x2=cos(pi/sqrt(23)*n);
subplot(2,1,2)
stem(n,x2)
