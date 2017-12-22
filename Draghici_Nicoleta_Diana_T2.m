%Numarul din catalog=7 
N= 50;           % Numarul de coeficienti
D = 7;           % Durata
P = 40;          % Perioada
F=1/P;           % Frecventa 
w0=2*pi/P;       % Pulsatia
t=0:0.02:P-0.02; % Timpul pe care calculam integrala (o perioada); 
                 % Rezolutia temporala aleasa conform Teorema esantionarii;

x = zeros(1,size(t,2));           % Initializez pe x cu zero
x(t<=D/2) =1;                     % De la 0 la D/2 x are valoarea 1
x(t>P-D/2) =1;                    % De la D/2 la P x are valoarea 1
t_r3 = 0:0.02:3*P-0.02;           % Vectorul timp pentru reprezentarea pe 3 perioade
x_3 = repmat(x,1,3);              % Vectorul x pentru reprezentarea pe 3 perioade
   
% Calculez integrala prin functia trapz
for k = -N:N
    x_temp = x;
    x_temp = x_temp.*exp(-j*k*w0*t);      % Vectorul inmultit cu termenul e la puterea corespunzatoare
    X(k+51) = trapz(t,x_temp);            % trapz=calculeaza integrala prin metoda trapezului 
                                          % Imparte suprafata in forme trapezoidale pentru a calcula mai usor aria
end



x_reconstruit(1:length(t)) = 0;                   %Initializez semnalului reconstruit cu N puncte

                                                  %Reconstructia lui x(t) folosind N coeficienti
for index = 1:length(t);
for k = -N:N
x_reconstruit(index) = x_reconstruit(index) + (1/P)*X(k+N+1)*exp(j*k*w0*t(index));
end
end

figure(1);
plot(t_r3,x_3);                          % Afisez pe x(t)
title('x(t) cu linie solida si reconstructia folosind N=50 coeficienti(linie punctata)');
hold on
x_r3 = repmat(x_reconstruit,1,3);        % Generam pe x reconstruit pe 3 perioade
t_r3=abs(t_r3);                          %Modulul=partea reala
x_r3=abs(x_r3);                          %Modulul=partea reala
plot(t_r3,x_r3,'--');                    % Afisez pe x reconstruit pe 3 perioade
xlabel('Timp [s]');
ylabel('Amplitudine');


f = -N*F:F:N*F;    % Vector de frecvente
figure(2);
stem(f,abs(X));     % Afisez modulul lui X in functie de frecventa = Spectrul de amplitudini
title('Spectrul lui x(t)');
xlabel('Frecventa [Hz]');
ylabel('|X|');



%%
% Seriile Fourier:
% Orice semnal periodic poate fi aproximat printr-o suma infinita de sinusuri si
% cosinusuri de diferite frecvente fiecare inmultit cu un anumit coeficient. Acesti coeficienti
% reprezinta practic spectrul.
% Semnalul reconstruit folosind un numar finit de termeni(N=50) se apropie ca
% forma de semnalul original cu o anumita marja de eroare. In plus se observa faptul ca semnalul poate fi aproximat printr-o
% suma de sinusuri: oscilatiile semnalului au un caracter sinusoidal.