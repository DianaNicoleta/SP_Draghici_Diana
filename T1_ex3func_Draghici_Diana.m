function[avg,m,m1] = T1_ex3func_Draghici_Diana(v)
%avg intoarce media aritmetica a partilor reale ale elementelor vectorului v
avg = mean(real(v))

%w returneaza un vector ce contine elementele vectorului v ridicate
%la patrat
w = v.^2

% vectorul m este vectorul v transpus
m=v.';

%m1 este matricea obtinuta prin inmultirea vectorului v cu m
m1=v*m
end