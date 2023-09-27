% Ejercicio 3
/*
 * Diseñar un programa en Prolog que represente el ejemplo de la Red Semántica
 * que figura en el apunte correspondiente a los Jorobados y Bilbo.
 */

/* Dado el siguiente conocimiento, construir la correspondiente Red Semántica. 
 * - Los jorobados son personas pequeñas. 
 * - Bilbo es un jorobado. 
 * - Los jorobados tienen dedos gordos. 
 * - Bilbo posee un anillo mágico. 
 * - El anillo fue encontrado en una cueva. 
 * - Los jorobados son personas míticas
 * y las personas míticas son estudiadas
 * por los estudiantes de literatura.
 */ 

% hechos
es_un(persona_mitica, persona).
es_un(joroba, persona_mitica).
es_un(joroba, persona_pequena).
es_un(anillo_magico, anillo).

tiene(joroba, dedos_gordos).
tiene(bilbo, joroba).
tiene(bilbo, anillo_magico).

se_encontro(anillo_magico, cueva).
estudian(estudiantes_literatura, persona_mitica).

% reglas
es_jorobado(X) :- tiene(X, joroba).
es_persona_mitica(X) :- es_jorobado(X).
es_estudiado(X) :- es_persona_mitica(X).
