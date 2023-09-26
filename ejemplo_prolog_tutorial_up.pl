%# hechos
%## predicados simples
man(peter).
man(juan).
man(horacio).
woman(eve).
woman(juana).
%## predicados compuestos
father(peter, juan).
mother(eve, juan).

%# reglas
is_man(X) :- man(X).
has_child(P) :- father(P, _).
is_father(P) :- man(P) , has_child(P).
is_child(C) :- father(_, C) ; mother(_, C).

%# consultas al motor de inferencias
% man(juan). -> true
% man(jonatan). -> false
% father(peter, juan). -> true

%# consulta con variable
% man(X).
% X = peter
% X = juan
% X = horacio
%! valores de X para que el predicado sea verdadero
% father(peter,X).
% X = juan

%# consulta con reglas
% is_man(juan). -> true
% has_child(peter). -> true
% has_child(X).
% X = peter
% is_father(peter). -> true
% is_child(C).
% C = juan
% C = juan
%! aparece dos veces porque es un OR y se cumple para dos hechos

%# comentarios
%- con ctrl + enter corremos las consultas
%- con "." indicamos fin de línea
%- las variables van en mayúscula
%- los hechos forman la base de conocimientos del programa
%- podemos pensar las reglas como si fuesen funciones de proposiciones
%- "_": cualquier valor
%- ",": AND
%- ";": OR