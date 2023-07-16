% Author: Yadier Betancourt

:- module(partition,[partition/4]).

% El predicado partition toma cuatro argumentos:
% Obj, un predicado que se utilizará para particionar la lista,
% R1, una lista de elementos,
% R2, donde se guarda el resultado.
% R3, donde se guarda el resultado.
% El predicado divide los elementos de R1 en dos listas, R2 y R3,
% de tal manera que todos los elementos que satisfacen el predicado Obj se colocan en R2 y los que no lo satisfacen se colocan en R3.
partition(_, [], [], []).

partition(Obj, [X | R1], [X | R2], L) :-
    call(Obj, X), !,
    partition(Obj, R1, R2, L).

partition(Obj, [X | R1], L, [X | R2]) :-
    partition(Obj, R1, L, R2).