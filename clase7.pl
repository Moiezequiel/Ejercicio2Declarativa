hermana(ana,pedro).
prima(maria,sofia).
amigo(juan,ana).


%podria definirse como una lista?

cocina(ana,lunes).
cocina(ana,martes).
cocina(ana,miercoles).
cocina(ana,jueves).
cocina(ana,viernes).
cocina(ana,sabado).
cocina(ana,domingo).

estudia(juan,lunes).
estudia(juan,martes).
estudia(juan,miercoles).
estudia(juan,jueves).
estudia(juan,viernes).

trabaja(pedro,lunes).
trabaja(pedro,martes).
trabaja(pedro,miercoles).
trabaja(pedro,jueves).
trabaja(pedro,viernes).
futbol(pedro,sabado).

estudia(maria,lunes).
estudia(maria,martes).
estudia(maria,miercoles).
estudia(maria,jueves).
estudia(maria,viernes).
estudia(maria,sabado).

trabaja(sofia,lunes).
trabaja(sofia,martes).
trabaja(sofia,miercoles).
trabaja(sofia,jueves).
trabaja(sofia,viernes).
trabaja(sofia,sabado).
trabaja(sofia,domingo).

estudia(sofia,lunes).
estudia(sofia,martes).
estudia(sofia,miercoles).
estudia(sofia,jueves).
estudia(sofia,viernes).
estudia(sofia,sabado).
estudia(sofia,domingo).

Semana = [lunes, martes,miercoles, jueves, viernes, sabado, domingo].
%regla para descansa

%descansa(x).

%reglas p2 

actividad(X) :- cocina(X); estudia(X); trabaja(X); futbol(X).

descansa(X,D) :- \+(cocina(X,D); estudia(X,D); trabaja(X,D); futbol(X,D)).
%CASO BASE: la lista ya no tiene elementos por recorrer, y si la lista de dias en los que descansa es vacia

descansa(X, D|Dias,D|Descanso) :- 
    dia(D,Semana),
    \+(cocina(X,D); estudia(X,D); trabaja(X,D); futbol(X,D))
