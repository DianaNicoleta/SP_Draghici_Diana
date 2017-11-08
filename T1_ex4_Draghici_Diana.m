%  initializez vectorul cu 21 de zerouri
v = zeros(1,21);
%   6-lea element il egalez cu 1
v(6) = 1;
% declar vectorii n si m
n = 0:20;
m = -5:15;

% subplot pentru a trasa ambele grafice in acelasi desen
% stem pentru reprezentarea vectorului v in functie de n sau m 
% grid = trasarea unei retele de linii
figure(1)
subplot(2,1,1),stem(v,n),title('stem(v,n)'),grid
subplot(2,1,2),stem(v,m),title('stem(v,m)'),grid


% initializez vectorul t cu modulul de 10 din care scadem elementele din n 
t = abs(10-n);

% se foloseste figure pentru a reprezenta  graficul 2 in alta
%fereastra
figure(2)

% reprezentare grafica pentru vectorul t
stem(t,n),title('stem(t,n)'),grid

% initializez vectorii l si g si reprezentam figura 3
figure(3)
n = -15:25;
l = sin((pi/17)*n);
m = 0:50;
g= cos((pi/sqrt(23))*m);

%c. reprezentare grafica pentru l si g in aceeasi fereastra, se foloseste
%plot deoarece stem nu functioneaza pentru afisarea mai multor grafice
%intr-o singura fereastra grafica
plot(l,n,g,m),title('plot(l,n,g,m)'),grid

%c. trecem la alta figura pentru a se afisa urmatoarele grafice intr-o
%fereastra separata si reprezentam grafic x1 si x2 in aceeasi fereastra dar
%nu in acelasi grafic
figure(4)
subplot(2,1,1),stem(l,n),title('stem(l,n)'),grid
subplot(2,1,2),stem(g,m),title('stem(g,m)'),grid