function[]=T3func_Draghici_Diana(t,nr)

%setez nivelurile
niv = [ -1 1 ];
%ultimul parametru al functiei tema2func2 este necesar pentru calcularea
%numarului figurii
T3func2_Draghici_Diana(t,nr,niv,1);

niv = [ -3 -1 1 3];
T3func2_Draghici_Diana(t,nr,niv,2);

niv = [ -5 -3 -1 1 3 5];
T3func2_Draghici_Diana(t,nr,niv,3);

niv = [ -7 -5 -3 -1 1 3 5 7];
T3func2_Draghici_Diana(t,nr,niv,4);

end