nivel1(marta).
nivel1(bruce).

nivel2(diana).
nivel2(may).
nivel2(rachel).
nivel2(pepper).
nivel2(peter).
nivel2(ben).
nivel2(barry).
nivel2(enrique).

nivel3(lois).
nivel3(mary).
nivel3(lara).
nivel3(ezio).
nivel3(lorenzo).
nivel3(sergio).
nivel3(harry).
nivel3(clark).
nivel3(tony).

mujer(marta).
mujer(diana).
mujer(may).
mujer(rachel).
mujer(pepper).
mujer(lois).
mujer(mary).
mujer(lara).

hombre(bruce).
hombre(peter).
hombre(ben).
hombre(barry).
hombre(enrique).
hombre(ezio).
hombre(lorenzo).
hombre(sergio).
hombre(harry).
hombre(clark).
hombre(tony).

hermanos(tony, lara).
hermanos(harry, mary).
hermanos(clark, lois).
hermanos(ezio, lorenzo).
hermanos(ezio, sergio). 

padre(marta, rachel).
padre(marta, may).
padre(marta, diana).
padre(pepper, tony).
padre(pepper, lara).
padre(diana, mary).
padre(diana, harry).
padre(bruce, rachel).
padre(bruce, may).
padre(bruce, diana).
padre(peter, mary).
padre(peter, harry).

tio(X, Y) :- hombre(X), \+ padre(X, Y), nivel2(X), nivel3(Y).

culpable(X) :- 
    hombre(X), 
    (hermanos(X, lara); hermanos(X, mary)),
    \+ hermanos(X, lois),
    tio(barry, X).
