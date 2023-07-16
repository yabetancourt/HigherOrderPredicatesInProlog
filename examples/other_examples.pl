% Author: Yadier Betancourt

:- use_module('prolog/map').
:- use_module('prolog/filter').

% Predicado para escribir un elemento en una nueva línea
escribe_linea(X) :-
    write(X),
    nl.

% Predicado para imprimir los elementos de una lista en un archivo
imprimelista(L) :-
    map(escribe_linea, L).

%?- imprimelista([1, 'Yadier']).
%1
%Yadier
%true .


% Predicado para verificar si un número es par
par(N) :-
    N mod 2 =:= 0.

% Predicado para verificar si todos los elementos de una lista son pares
todospares(L) :-
    map(par, L).

%?- todospares([1,3,2]).
%false.
%
%?- todospares([4,2, 6, 8, 0]).
%true .


% Predicado para traducir un resto en castellano
resto_castellano(N, Castellano) :-
    Resto is N mod 10,
    (Resto = 0, Castellano = cero;
    Resto = 1, Castellano = uno;
    Resto = 2, Castellano = dos;
    Resto = 3, Castellano = tres;
    Resto = 4, Castellano = cuatro;
    Resto = 5, Castellano = cinco;
    Resto = 6, Castellano = seis;
    Resto = 7, Castellano = siete;
    Resto = 8, Castellano = ocho;
    Resto = 9, Castellano = nueve).


% Predicado para obtener los restos en castellano de una lista de números
traducerestos(L1, L2) :-
    map(resto_castellano, L1, L2).


%?- traducerestos([1, 12, 65, 78], L).
%L = [uno, dos, cinco, ocho] .
%
%?- traducerestos([1000, 123, 13, 44], L).
%L = [cero, tres, tres, cuatro] .


opuestos(L1, L2) :-
    map(opuesto, L1, L2).

opuesto(X, Y) :-
    Y is -X.

%?- opuestos([1, -2, 3, 12, -1000, 0], L).
%L = [-1, 2, -3, -12, 1000, 0] .


natural(C) :-
    integer(C),
    C >= 0.

todos_nat(L) :-
    map(natural, L).

% Predicado para verificar si un número es múltiplo de N
multiplo(N, X) :-
    X mod N =:= 0.

% Predicado para separar los múltiplos de N de una lista de números
separaMultiplosN(L, N, LMN, R) :-
    todos_nat(L),
    natural(N),
    filter(multiplo(N), L, LMN),
    excluye(multiplo(N), L, R).

%?- separaMultiplosN([1,2,3,4,5,6],2,LSi, LNo).
%LSi = [6, 4, 2],
%LNo = [1, 3, 5] .

%?- separaMultiplosN([1,2,3,4,5,6],3,LSi, LNo).
%LSi = [6, 3],
%LNo = [1, 2, 4, 5]

%?- separaMultiplosN([1,2,3,4,5,6.4],3,LSi, LNo).
%false.
