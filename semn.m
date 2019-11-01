function[v]=semn(rez,nivel)
pct=floor(0.25/rez); %%puncte pentru fiecare nivel
v=[];
for(k=1:length(nivel))  %%pentru fiecare nivel
     A=nivel(randi(length(nivel))); %generez valori random pentru amplitudine
     vect=A*ones(1,pct);
     v=[v ,vect]; %concatenez vec lui v
     
end
