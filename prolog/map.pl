:- module(map,[map/2, map/3]).


% Map 2
map(Obj, L):-
    map_aux(Obj, L, []).

map_aux(_, [], _).

map_aux(Obj, [H|T], R) :-
    call(Obj, H),
    map_aux(Obj, T, R).

% Map 3
map(_, [], []).

map(Obj, [X|R1], [Y|R2]) :-
    call(Obj, X, Y),
    map(Obj, R1, R2).