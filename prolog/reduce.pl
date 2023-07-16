% Author: Yadier Betancourt

:- module(reduce,[reduce/4]).

% reduce(F, L, Acc, Result) es un procedimiento que toma cuatro argumentos:
% F, que es un predicado de tres argumentos;
% L, que es una lista de elementos;
% Acc, que es un acumulador inicial;
% Result, que es el resultado final de aplicar el predicado F a los elementos de la lista.
reduce(_, [], Acc, Acc).

reduce(F, [H|T], Acc, Result) :-
    call(F, H, Acc, NewAcc),
    reduce(F, T, NewAcc, Result).