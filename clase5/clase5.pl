% 1 
calculo_aeria_perim :- 
    write('area o perimetro'),nl,
    read(Res),
    (Res = 'area'
    -> write('calculo de area'),nl, write('lados de rectangulo:'),nl,
        write('altura: '),read(X),
        write('ancho: '),read(Y),
        rectangulo(X,Y),
        write(rect_area(AR))
    ; Res = 'perimetro'
    -> write('calculo de perimetro: '),('lados de rectangulo: '),nl
        % write('altura: '),read(X),
        % write('ancho: '),read(Y),
        % rectangulo(X,Y)
        
        ).


%OperadoresRelacionales
%Numeromayor
mayor(X,Y,R).
mayor(X,Y,X) :- X > Y.
mayor(X,Y,Y) :- X =< Y.

%Rangodeedad
rango_edad(Edad,Rango) :-
    (Edad < 0 -> Rango = 'bebe';
    Edad =< 12 -> Rango = 'niño';
    Edad =< 17 -> Rango = 'adolescente';
    Rango = 'ya te toca chambear').

%Notadeaprobacion
nota_aprobacion(Nota,Estado) :-
    (Nota =< 5 -> Estado = 'reprobado';
    Nota =< 6 -> Estado = 'aprobado').

