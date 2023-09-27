% Ejercicio 5
/*
 * Dado el ejemplo que figura en la presentación sobre prolog de alimentos,
 * mejorarlo agregando al menos 15 hechos y 2 reglas. 
 */

% hechos
entrada(paella).
entrada(gazpacho).
entrada(pasta).
entrada(provoleta).
entrada(baston_mozzarella).
entrada(choripan).
entrada(papas_fritas).
carne(filete_de_cerdo).
carne(pollo_asado).
carne(bife_de_chorizo).
pescado(trucha).
pescado(bacalao).
postre(flan).
postre(nueces_con_miel).
postre(naranja).
postre(batata_y_dulce).
postre(membrillo_y_dulce).
postre(helado).
postre(manzana).
postre(pera).

calorias(paella, 200).
calorias(gazpacho, 150).
calorias(pasta, 300).
calorias(provoleta, 300).
calorias(baston_mozzarella, 400).
calorias(choripan, 400).
calorias(papas_fritas, 300).
calorias(filete_de_cerdo, 400).
calorias(pollo_asado, 280).
calorias(bife_de_chorizo, 500).
calorias(trucha, 160).
calorias(bacalao, 300).
calorias(flan, 200).
calorias(nueces_con_miel, 500).
calorias(naranja, 50).
calorias(batata_y_dulce, 200).
calorias(membrillo_y_dulce, 200).
calorias(helado, 200).
calorias(manzana, 100).
calorias(pera, 100).

% reglas
plato_principal(X) :- carne(X) ; pescado(X).
es_comida(X,Y,Z) :- entrada(X) , plato_principal(Y) , postre(Z).
muchas_calorias(X) :- calorias(X, Y), Y > 300.
