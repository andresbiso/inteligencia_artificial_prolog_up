% Ejercicio 3
/*
 * Crear un programa en Prolog que represente la base de conocimiento
 * de un árbol genealógico de tu preferencia.
 * Deben contener al menos 20 hechos y 5 reglas. 
 */

% hechos
hombre(luis).
hombre(jorge).
hombre(esteban).
hombre(matias).
hombre(tomas).
hombre(sebastian).

mujer(florencia).
mujer(julieta).
mujer(viviana).
mujer(norma).

pareja(luis, florencia).
pareja(esteban, julieta).
pareja(matias, viviana).

progenitor(luis, jorge).
progenitor(luis, esteban).
progenitor(esteban, matias).
progenitor(matias, tomas).
progenitor(matias, sebastian).
progenitor(matias, norma).

progenitor(florencia, jorge).
progenitor(florencia, esteban).
progenitor(julieta, matias).
progenitor(viviana, tomas).
progenitor(viviana, sebastian).
progenitor(viviana, norma).

% reglas
es_padre(X,Y) :- hombre(X) , progenitor(X, Y).
es_madre(X,Y) :- mujer(X) , progenitor(X,Y).
son_hermanos(X,Y) :- progenitor(Z,X) , progenitor(Z,Y) , X\=Y.
es_esposo(X,Y) :- pareja(X,Y) , hombre(X).
es_esposa(X,Y) :- pareja(Y,X) , mujer(X).
es_abuelo(X,Y) :- progenitor(Z,Y) , es_padre(X,Z).
es_abuela(X,Y) :- progenitor(Z,Y) , es_madre(X,Z).
