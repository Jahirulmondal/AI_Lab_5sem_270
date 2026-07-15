male(suresh).
male(rahul).
male(arjun).
male(mohan).

female(geeta).
female(kavya).
female(rani).
female(komal).

% PARENTS
parent(mohan,rahul).
parent(kavya,rahul).

parent(rahul,suresh).
parent(rani,suresh).

parent(rahul,geeta).
parent(rani,geeta).

parent(suresh,arjun).
parent(komal,arjun).

% DERIVED RELATIONSHIPS
son(Child,Par):-
    male(Child),
    parent(Par,Child).

daughter(Child,Par):-
    female(Child),
    parent(Par,Child).
father(Par,Child):-
    male(Par),
    parent(Par,Child).

mother(Par,Child):-
    female(Par),
    parent(Par,Child).

sibling(X,Y):-
    parent(Par,X),
    parent(Par,Y),
    X \= Y.
