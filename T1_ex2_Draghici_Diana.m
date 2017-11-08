%initializez un vector aleator,cu valori pozitive si negative
v=randn(1,10)
%afisez doar elementele negative ale vectorului
for i=1:1:10
    if v(i)<0
        v(i)
    end
end