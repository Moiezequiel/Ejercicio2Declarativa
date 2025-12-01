% Personas presentes
persona(alice).
persona(robert).
persona(clara).
persona(james).


% Relaciones
esposo(alice, lord_henry).
sobrina(clara, lord_henry).
socio(james, lord_henry).
empleado(robert, lord_henry).

% Motivos (quién podría tener razones)
motivo(alice, herencia).
motivo(robert, maltrato).
motivo(clara, deuda).
motivo(james, negocios).

% Medios (quién tuvo acceso al arma)
acceso(alice, veneno).
acceso(robert, cuchillo).
acceso(clara, cuerda).
acceso(james, pistola).

% Oportunidad (quién estuvo en la biblioteca)
estuvo(alice, sala).
estuvo(robert, cocina).
estuvo(clara, biblioteca).
estuvo(james, estudio).


% Reglas para ver que ondas
estuvo_en_biblioteca(X) :- estuvo(X, biblioteca).

% Regla para cruzar información, entre el motivo y la oportunidad
sospechoso(X) :- motivo(X, _), estuvo(X, biblioteca).

% Regla para analizar el arma
tuvo_acceso_a_cuerda(X) :- acceso(X, cuerda).

% Descrubrir quién es el asesino
asesino(X) :- sospechoso(X), tuvo_acceso_a_cuerda(X).