% Author: Yadier Betancourt

:- use_module('prolog/map').

%
natural(C) :-
    integer(C),
    C >= 0.

todos_nat(L) :-
    map(natural, L).

%?- todos_nat([1,2,2,3,1]).
 %true ;
 %false.
 %
 %?- todos_nat([1,2,2,3,1.5]).
 %false.

%
sin_variables(L) :-
    map(nonvar, L).

% ?- sin_variables([1,a,3,1]).
  %true .
  %
  %?- sin_variables([1,a,3,X]).
  %false.


%
% Predicado auxiliar que verifica si una palabra está escrita en mayúsculas
es_mayuscula(Palabra) :-
    atom_chars(Palabra, Chars),
    map(char_en_mayuscula, Chars).

% Predicado auxiliar que verifica si un carácter es una letra mayúscula
char_en_mayuscula(Char) :-
    char_type(Char, upper).

% Predicado principal que verifica si todas las palabras de una lista están escritas en mayúsculas
todas_mayusculas(Palabras) :-
    map(es_mayuscula, Palabras).

%?- todas_mayusculas(['YADIER', 'A', 'C']).
%true .
%
%?- todas_mayusculas(['Yadier', 'A', 'D']).
%false.


% Predicado para traducir números a texto
trad(1, uno).
trad(2, dos).
trad(3, tres).
trad(4, cuatro).
trad(5, cinco).
trad(6, seis).
trad(7, siete).
trad(8, ocho).
trad(9, nueve).
trad(10, diez).

traducir(L, R) :-
    map(trad, L, R).

%?- traducir([1,2], L).
%L = [uno, dos] .
%
%?- traducir([5, 8, 3, 1, 9], L).
%L = [cinco, ocho, tres, uno, nueve] .


% Predicado para elevar un número al cuadrado
cuad(X, Y) :-
    Y is X*X.

elevar_cuadrado(L, R) :-
    map(cuad, L, R).

%?- elevar_cuadrado([1,2,3,4,1,77], L).
%L = [1, 4, 9, 16, 1, 5929] .
%
%?- elevar_cuadrado([1,2], L).
%L = [1, 4] ;
