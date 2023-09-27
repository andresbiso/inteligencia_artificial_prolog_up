% Ejercicio 1
/*
 * Crear un programa en Prolog que represente la base de conocimiento de animales.
 * Deben contener al menos 20 hechos y 5 reglas. 
 */
% hechos
reptil(anaconda).
reptil(culebra).
reptil(caiman).
reptil(cocodrilo).
reptil(serpiente).
reptil(tortuga).

anfibio(salamandra).
anfibio(rana).
anfibio(sapo).
anfibio(ajolote).

ave(ganso).
ave(cisne).
ave(loro).

mamifero(mono).
mamifero(vaca).
mamifero(ornitorrinco).

venenoso(serpiente).
venenoso(rana).
venenoso(tortuga).
venenoso(ornitorrinco).

oviparo(ornitorrinco).

% reglas
es_venenoso(X) :- venenoso(X).
es_oviparo(X) :- ave(X) ; oviparo(X).
es_viviparo(X) :- mamifero(X) , not(es_oviparo(X)).
es_sangre_fria(X) :- reptil(X) ; anfibio(X).
es_sangre_tibia(X) :- mamifero(X) ; ave(X).
