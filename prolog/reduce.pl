:- module(reduce,[reduce/4]).

% Predicado para aplicar una función a los elementos de una lista de manera acumulativa
reduce(_, [], Acc, Acc).

reduce(F, [H|T], Acc, Result) :-
    call(F, H, Acc, NewAcc),
    reduce(F, T, NewAcc, Result).