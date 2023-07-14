:- use_module('prolog/reduce').

% Predicado para sumar dos números
suma(X, Y, Z) :-
    Z is X + Y.

suma_lista(L, S) :-
    reduce(suma, L, 0, S).

%?- suma_lista([1, 2, 3, 4, 5], S).
%S = 15 .


% Predicado para multiplicar dos números
producto(X, Y, Z) :-
    Z is X * Y.

% Predicado para calcular el producto de una lista de números
producto_lista(Lista, Producto) :-
    reduce(producto, Lista, 1, Producto).

%?- producto_lista([1, 2, 3, 4, 5], P).
%P = 120 .
