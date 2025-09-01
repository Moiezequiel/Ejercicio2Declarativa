%Base de conocimiento  
estudiante(kelvin).
estudiante(raul).
estudiante(florence).
estudiante(mauricio).
estudiante(melissa).

%-si ellacuria es estudiante
%-usando el concepto de corte obtner el primer estudiante de la lista
%-listar todos los estudiantes usando fail (con fallo)
%-(entrada y salida) pedir al usuario que ingrese un nombre y verificar si es estudiante

%Fallo
no_es_estudiante(Nombre) :- \+ estudiante(Nombre).

%Corte - ejemplos adicionales
primer_estudiante_con_mensaje(X) :-
    estudiante(X),
    !.


%Mostrarestudiantes
mostrar_estudiantes :-
    estudiante(Nombre),
    write('Estudiante: '), write(Nombre),nl,
    fail.
mostrar_estudiantes. 

%Ingresar nombre y verifica si es estudiante
%read and write
verif_estudiante :-
    	write('nombre'),read(Nombre),
    	(   estudiante(X) == Nombre
        	->   write('es estudiante')
            ; write('no es')
        ).
