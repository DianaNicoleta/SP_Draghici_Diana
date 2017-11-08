function[]=T2func_Draghici_Diana(t,nr)

width = 0.5;
%sawtooth(t,width) genereaza un semnal triunghiular unde width determina
% maximul; width este 0.5 pentru a avea un semnal simetric
% Inmultesc cu (1+width) si scad cu width pentru a
% fixa nivelurile de maxim si minim (a+b = 1 si a-b = -2)

%inmultesc t cu 1/6 pentru a largi semnalul astfel incat panta sa devina +1
%V/s
s=(1+width)*sawtooth(t*2*1/6*pi, width) - width;
figure(nr)
plot(t,s,'-r.'),title('Semnal triunghiular'),xlabel('Timp [s]'),ylabel('A [V]'),grid
end
