% Ejercicio 2
/*
 * Dado los siguientes hechos, crear una regla que defina depredador y otra presa.
 */
% hechos
is_animal(perro).
is_animal(canario).
is_animal(gato).
is_animal(delfin).
is_animal(mojarrita).
come(gato, canario).
come(perro, gato).
come(delfin, mojarrita).

% reglas
depredador(X) :- come(X,_).
presa(X) :- come(_,X).
