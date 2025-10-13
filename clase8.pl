:- dynamic empleado/2.

empleado('Ana', contabilidad).
empleado('Luis', sistemas).
empleado('Sofia', marketing).





listar_empleados :-
    writeln('--- Lista de Empleados ---'),
    empleado(Nombre, Depto),
    format('~w trabaja en ~w.~n', [Nombre, Depto]), 
    fail. %fail. se usa para forzar que Prolog explore todas las combinaciones y liste todo antes de terminar.
listar_empleados. 

agregar_empleado(Nombre, Depto) :-
    asserta(empleado(Nombre, Depto)),
    format('Se ha agregado el empleado: ~w en el departamento ~w.~n', [Nombre, Depto]).

eliminar_empleado(Nombre) :-
    retract(empleado(Nombre, Depto)),
    format('Se ha eliminado a ~w del departamento ~w.~n', [Nombre, Deptos]), % ~w Imprime un término
    !.

eliminar_todos :-
    retractall(empleado(_, _)),
    writeln('Todos los empleados han sido eliminados de la base.').

actualizar_departamento(Nombre, NuevoDepto) :-
    retract(empleado(Nombre, _)),  % elimina el hecho antiguo
    assert(empleado(Nombre, NuevoDepto)),  % inserta el nuevo
    format('Se ha actualizado el departamento de ~w a ~w.~n', [Nombre, NuevoDepto]),
    !.

agregar_unico(Nombre, Depto) :-
    (   empleado(Nombre, Depto)
    ->  format('El empleado ~w ya está inscrito en ~w.~n', [Nombre, Depto])
    ;   assert(empleado(Nombre, Depto)),
        format('Se ha agregado a ~w en el departamento ~w.~n', [Nombre, Depto])
    ).
