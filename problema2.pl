mujer(diana).
mujer(constancia).
mujer(analucia).
mujer(ines).
mujer(ruth).
mujer(soledad).

hombre(daniel).
hombre(manuel).
hombre(jonas).
hombre(lamar).
hombre(pedro).
hombre(feliciano).

nivel1(lamar).
nivel1(analucia).

nivel2(pedro).
nivel2(ruth).
nivel2(feliciano).
nivel2(diana).

nivel3(jonas).
nivel3(soledad).
nivel3(ines).
nivel3(manuel).

nivel4(daniel).
nivel4(constancia).

padre(lamar, pedro).
padre(analucia, pedro).
padre(pedro, jonas).

padre(ruth, ines).

relacionado(pedro, feliciano).
relacionado(jonas, manuel).

confirmado(X, Y) :- 
    (padre(X, Z), padre(Y, Z)),
    (padre(Z, A)),
    write(X '-' Y), nl,
    write('->'), write(Z), nl,
    write('-->'), write(A).

padrehijo(X) :- padre(X, Y),
    nl, write(X), nl,
    write('->'), write(Y).

relacion(X) :-  relacionado(X, Z),
    nl, write(X), write(' relacionado con '), write(Z).

familia(_) :- write('FAM. FERNANDEZ'), nl,
    confirmado(lamar, analucia), nl, %familia
    padrehijo(ruth), nl, %padre-hija
    relacion(pedro), nl, %cunados
    relacion(jonas), nl, %primos
    write('-- NO HAY OTRAS RELACIONES CONFIRMADAS --').