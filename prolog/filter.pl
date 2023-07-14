:- module(filter,[filter/3, excluye/3]).


%
filter(Obj, L, R) :-
    filter(Obj, L, [], R).

filter(_, [], R, R).

filter(Obj, [H|T], A, R) :-
    call(Obj, H), !,
    filter(Obj, T, [H|A], R).

filter(Obj, [_|T], A, R) :-
    filter(Obj, T, A, R).


excluye(Obj, L, R) :-
    filter(Obj, L, Aux),
    subtract(L, Aux, R).


% Predicado para eliminar elementos de una lista
subtract([], _, []).

subtract([X|R], Y, Z) :-
    member(X, Y), !,
    subtract(R, Y, Z).

subtract([X|R], Y, [X|Z]) :-
    subtract(R, Y, Z).