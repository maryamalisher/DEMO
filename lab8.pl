member(A,[A|_]).
member(A,[_|T]):-member(A,T).
length([],0).
length([_|L],N):-lenth(L,N1),N is N1+1.
