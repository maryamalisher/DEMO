male(ahmed).
male(ali).
male(yousuf).
female(asma).
female(razia).
female(maryam).

parent(ahmed,ali).
parent(asma,ali).
parent(ali,yousuf).
parent(ali,maryam).
parent(razia,yousuf).
parent(razia,maryam).

mother(X,Y):-parent(X,Y),female(X).
father(X,Y):-parent(X,Y),male(X).
brother(X,Y):-parent(Z,Y),parent(Z,X),male(X),X\==Y.
sister(X,Y):-parent(Z,Y),parent(Z,X),female(X),X\==Y.
grandfather(X,Y):-parent(X,Z),parent(Z,Y),male(X).
grandmother(X,Y):-parent(X,Z),parent(Z,Y),female(X).

