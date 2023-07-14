:- module(map,[map/2, map/3]).


% map(Obj, L) es un predicado que toma dos argumentos:
% Obj, que es un predicado de un argumento;
% L, que es una lista de elementos.
% Este predicado aplica el  predicado Obj a cada elemento de la lista L
% Devuelve true si todos los elementos de la lista cumplen con obj.
map(Obj, L):-
    map_aux(Obj, L, []).

map_aux(_, [], _).

map_aux(Obj, [H|T], R) :-
    call(Obj, H),
    map_aux(Obj, T, R).

% map(Obj, L1, L2) es un predicado que toma tres argumentos:
% Obj, que es un predicado de dos argumentos;
% L1, que es una lista de elementos;
% L2, que es una lista en la que se almacenarán los resultados de aplicar Obj a cada elemento de la lista L1.
map(_, [], []).

map(Obj, [X|R1], [Y|R2]) :-
    call(Obj, X, Y),
    map(Obj, R1, R2).