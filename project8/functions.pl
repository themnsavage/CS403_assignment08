count(Op, Ref, Count) :- (
    Op=('=='), findall(Z, (pay(X, Y, Z), Z=:=Ref), List),  length(List, Count);
    Op=('!='), findall(Z, (pay(X, Y, Z), Z=\=Ref), List),  length(List, Count);
    Op=('>'), findall(Z, (pay(X, Y, Z), Z>Ref), List),  length(List, Count);
    Op=('>='), findall(Z, (pay(X, Y, Z), Z>=Ref), List),  length(List, Count);
    Op=('<'), findall(Z, (pay(X, Y, Z), Z<Ref), List),  length(List, Count);
    Op=('<='), findall(Z, (pay(X, Y, Z), Z=<Ref), List),  length(List, Count)
    ).

list(Op, Ref, List) :- (
    Op=('=='), findall([X,Y,Z], (pay(X, Y, Z), Z=:=Ref), List);
    Op=('!='), findall([X,Y,Z], (pay(X, Y, Z), Z=\=Ref), List);
    Op=('>'), findall([X,Y,Z], (pay(X, Y, Z), Z>Ref), List);
    Op=('>='), findall([X,Y,Z], (pay(X, Y, Z), Z>=Ref), List);
    Op=('<'), findall([X,Y,Z], (pay(X, Y, Z), Z<Ref), List);
    Op=('<='), findall([X,Y,Z], (pay(X, Y, Z), Z=<Ref), List)
    ).

min(Op, Ref, Min) :- (
    Op=('=='), findall(Z, (pay(X, Y, Z), Z=:=Ref), List),list_min(List, M), Min is (M);
    Op=('!='), findall(Z, (pay(X, Y, Z), Z=\=Ref), List),list_min(List, M), Min is (M);
    Op=('>'), findall(Z, (pay(X, Y, Z), Z>Ref), List), list_min(List, M), Min is (M);
    Op=('>='), findall(Z, (pay(X, Y, Z), Z>=Ref), List), list_min(List, M), Min is (M);
    Op=('<'), findall(Z, (pay(X, Y, Z), Z<Ref), List), list_min(List, M), Min is (M);
    Op=('<='), findall(Z, (pay(X, Y, Z), Z=<Ref), List), list_min(List, M), Min is (M)
    ).

max(Op, Ref, Max) :- (
    Op=('=='), findall(Z, (pay(X, Y, Z), Z=:=Ref), List),list_max(List, M), Max is (M);
    Op=('!='), findall(Z, (pay(X, Y, Z), Z=\=Ref), List),list_max(List, M), Max is (M);
    Op=('>'), findall(Z, (pay(X, Y, Z), Z>Ref), List),list_max(List, M), Max is (M);
    Op=('>='), findall(Z, (pay(X, Y, Z), Z>=Ref), List),list_max(List, M), Max is (M);
    Op=('<'), findall(Z, (pay(X, Y, Z), Z<Ref), List),list_max(List, M), Max is (M);
    Op=('<='), findall(Z, (pay(X, Y, Z), Z=<Ref), List),list_max(List, M), Max is (M)
    ).

total(Op, Ref, Total) :- (
    Op=('=='), findall(Z, (pay(X, Y, Z), Z=:=Ref), List),  length(List, Count);
    Op=('!='), findall(Z, (pay(X, Y, Z), Z=\=Ref), List),  length(List, Count);
    Op=('>'), findall(Z, (pay(X, Y, Z), Z>Ref), List),  length(List, Count);
    Op=('>='), findall(Z, (pay(X, Y, Z), Z>=Ref), List),  length(List, Count);
    Op=('<'), findall(Z, (pay(X, Y, Z), Z<Ref), List),  length(List, Count);
    Op=('<='), findall(Z, (pay(X, Y, Z), Z=<Ref), List),  length(List, Count)
    ).

avg(Op, Ref, Avg) :- (
    Op=('=='), findall(Z, (pay(X, Y, Z), Z=:=Ref), List),  length(List, Count);
    Op=('!='), findall(Z, (pay(X, Y, Z), Z=\=Ref), List),  length(List, Count);
    Op=('>'), findall(Z, (pay(X, Y, Z), Z>Ref), List),  length(List, Count);
    Op=('>='), findall(Z, (pay(X, Y, Z), Z>=Ref), List),  length(List, Count);
    Op=('<'), findall(Z, (pay(X, Y, Z), Z<Ref), List),  length(List, Count);
    Op=('<='), findall(Z, (pay(X, Y, Z), Z=<Ref), List),  length(List, Count)
    ).

list_min([L|Ls], Min) :-
    list_min(Ls, L, Min).

list_min([], Min, Min).
list_min([L|Ls], Min0, Min) :-
    Min1 is min(L, Min0),
    list_min(Ls, Min1, Min).

list_max([], R, R).
list_max([X|Xs], WK, R):- X >  WK, list_max(Xs, X, R). 
list_max([X|Xs], WK, R):- X =< WK, list_max(Xs, WK, R).
list_max([X|Xs], R):- list_max(Xs, X, R).