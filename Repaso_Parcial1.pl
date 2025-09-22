trabaja(ernesto,maestro).
vive(ernesto,valle_verde).
vive(teresa, valle_verde).
trabaja(teresa, enfermera).

padre(ernesto,ana).
padre(ernesto,lucia).
padre(ernesto,carlos).

trabaja(carlos,ing_civil).

casado_con(carlos, sofia).
trabaja(sofia,arquitecto).

padre(carlos,mateo).
padre(carlos,valeria).


trabaja(mateo,estudiante).
trabaja(valeria, estudiante).

trabaja(ana,prof_mate).

madre(ana,andres).

trabaja(andres,musico).

trabaja(lucia,estudiante_medicina).

amigo(carlos, ricardo).

casado_con(ricardo, laura).

padre(ricardo, daniel).
madre(laura,daniel).

amigo(daniel,mateo).

trabaja(laura,bibliotecaria).

hermano(miguel,ernesto).
trabaja(miguel,agricultor).

casado_con(miguel,rosa).

trabaja(rosa,vendedora).

padre(miguel,fernanda).
madre(rosa,fernanda).

trabajo(fernanda, estudiante_biologia).

vive_en(carmen,valle_verde).

trabajo(carmen,partera).

abuel(carmen,isablel).
trabaja(isabel,estudiante_derecho).

amigo(felipe,miguel).

trabaja(felipe,ropavejero).

padre(felipe,joaquin).



%regla para definir hijos

hijo(Hijo,Padre) :- padre(Padre,Hijo).

%regla recip esposo 
casado_con(Esposa,Esposo) :- casado_con(Esposo_esposa).

%regla define madre
madre(Madre,Hijo) :- casado_con(Madre,Padre),padre(Padre,Hijo).

%regla para definir hermanos recip
hermano(X,Y) :- padre(Z,Y), padre(Z,X), madre(A,X),  madre(A,Y).
hermano(Y,X) :- hermano(Y,X).

%regla vive en para hijos
vive_en(Per,Lug) :- padre(X,Per),vive_en(X,Lug) ; madre(Y,Per),vive_en(Y,Lug).

%regla para definr primo 
primo(X,Y) :- hijo(X,Z), hijo(Y,A), hermano(A,Z).

%regla para definir sobrino / tio 
sobrino(Sob, Tio) :- hijo(Sob, X), hermano(X,Tio); hijo(Sob, X), primo(X,Tio).

%recip mejor amigo
amigo(X,Y) :- amigo(Y,X).





%fin de arbol 1


