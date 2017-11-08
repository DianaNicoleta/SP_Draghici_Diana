format short 
%initializez vectorul a
a=[0:0.1:2]
format short
%initializez vectorul b,de lungime egala cu lungimea vectorului a
b=ones(size(a))
%transpun vectorul b
b=b(:)
%inmultirea vectorilor a si b.ne da un scalar=21
c=a*b
%inmultirea vectorilor b si a. ne da o matrice patratica de marime size(a)
d=b*a
%inmultirea vectorilor a si b element cu element. ne da eroare
e=(a.*b)