function[]=T1func_Draghici_Diana(t,nr)
% factorul de umplere
D= 1/4;

%semnalul dreptunghiular se reprezinta ca square(t, n) unde D este duty
%cycle.Inmultesc cu (1-D) si scad cu D deoarece nivelurile
%maxim si minim nu sunt opuse (a+b = 0.5 (nivelul max) si a-b = -1 (nivelul
%min))
s=(1-D)*square(t*2*pi, D*100) - D;
figure(nr)
plot(t,s,'-r.'),title('Semnal dreptunghiular periodic'),xlabel('Timp [s]'),ylabel('A [V]'),grid
end