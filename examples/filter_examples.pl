% Author: Yadier Betancourt

:- use_module('prolog/filter').

% Predicado para verificar si un número es par
es_par(N) :-
    N mod 2 =:= 0.

pares(L, R) :-
    filter(es_par, L, R).

%?- pares([1,2,3,4,5,6,7], L).
%L = [6, 4, 2] .

%?- pares([1,3,5,7], L).
%L = []

impares(L, R) :-
    excluye(es_par, L, R).

%?- impares([1,2,3,4,5,6,7], L).
%L = [1, 3, 5, 7]

%?- impares([2, 4, 6, 8], L).
%L = [] .
