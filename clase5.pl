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
