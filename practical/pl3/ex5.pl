children(Person, Children) :- 
    findall(Child, parent(Parent, Children)).



grandparent(X,Y) :- parent(X, Z), parent(Z, Y).
grandmother(X,Y) :- grandparent(X,Y), female(X).
siblings(X,Y) :- parent(P1,X), parent(P1,Y),parent(P2,X), parent(P2,Y), P1 \= P2, X \= Y.
halfSiblings(X,Y) :- parent(Z, X), parent(Z,Y), X \= Y, \+ siblings(X,Y).
cousins(X,Y) :- parent(P1, X), parent(P2, Y), siblings(P1, P2), X \= Y.
uncle(X,Y) :- male(X), parent(Z, Y), siblings(Z,X).


% gender

female(grace).
male(frank).
female(dede).
male(jay).
female(gloria).
male(javier).
female(barb).
male(merle).
male(phil).
female(claire).
male(mitchell).
male(joe).
male(manny).
male(cameron).
female(pameron).
male(bo).
male(dylan).
female(haley).
female(alex).
male(luke).
female(lily).
male(rexford).
male(calhoun).
male(george).
female(poppy).

% family

parent(grace, phil).
parent(frank, phil).

parent(dede, claire).
parent(jay, claire).

parent(dede, mitchell).
parent(jay, mitchell).

parent(jay, joe).
parent(gloria, joe).

parent(javier, manny).
parent(gloria, manny).

parent(barb, cameron).
parent(merle, cameron).

parent(barb, pameron).
parent(merle, pameron).

parent(phil, haley).
parent(claire, haley).

parent(phil, alex).
parent(claire, alex).

parent(phil, luke).
parent(claire, luke).

parent(mitchell, lily).
parent(cameron, lily).

parent(mitchell, rexford).
parent(cameron, rexford).

parent(pameron, calhoun).
parent(bo, calhoun).

parent(dylan, george).
parent(haley, george).

parent(dylan, poppy).
parent(haley, poppy).
