female(haley).
male(gil).
parent(frank, phil).
parent(X, claire).
parent(gloria, X).
parent(jay, _X), parent(_X, Y).
parent(_X, lily), parent(Y, _X).
parent(alex, X).
parent(jay, X), \+ parent(gloria, X).

cousins(haley, lily).
parent(X, luke), male(X).
uncle(X, lily).
parent(X, _Y), parent(_Y, _Z).
siblings(X,Y) ; halfSiblings(X,Y).
