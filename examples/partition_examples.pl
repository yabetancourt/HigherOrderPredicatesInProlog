% Author: Yadier Betancourt

:- use_module('prolog/partition').

es_par(N) :- N mod 2 =:= 0.

separar_pares_impares(Lista, Pares, Impares) :-
    partition(es_par, Lista, Pares, Impares).

%?- separar_pares_impares([1,2,3,4,2,3,1], P, I).
%P = [2, 4, 2],
%I = [1, 3, 3, 1] .
