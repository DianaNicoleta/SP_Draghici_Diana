function[T] = T1_ex5func_Draghici_Diana(t,s,cosinus)

% verific desenez un semnal cosinusoidal
if cosinus == 0
     %  reprezentam grafic semnalul 
    plot(t,s,'.-'),xlabel('Timp [s]'),grid

    % cautam varfurile graficului iar diferenta valorilor este perioada
    % semnalului
    [idx,idx] = findpeaks(s);
    T = t(idx(2))-t(idx(1));

else
    % trasez primul semnal sinusoidal si il afisez cu semnalul
    % cosinusoidal cu culoare rosie
    F1 = 50;
    s1 = 2*sin(2*pi*F1*t);
    plot(t,s,t,s1),xlabel('Timp [s]'),color('red'),grid
end

end