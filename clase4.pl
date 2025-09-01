
%read and write
verif_estudiante :-
    	write('nombre'),read(Nombre),
    	(   estudiante(X) == Nombre
        	->   write('es estudiante')
            ; write('no es')
        ).
