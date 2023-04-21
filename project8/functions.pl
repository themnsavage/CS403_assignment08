count(Op, Ref, Count) :- (
    Op=('=='), findall(Z, (pay(X, Y, Z), Z=:=Ref), List),  length(List, Count);
    Op=('!='), findall(Z, (pay(X, Y, Z), Z=\=Ref), List),  length(List, Count);
    Op=('>'), findall(Z, (pay(X, Y, Z), Z>Ref), List),  length(List, Count);
    Op=('>='), findall(Z, (pay(X, Y, Z), Z>=Ref), List),  length(List, Count);
    Op=('<'), findall(Z, (pay(X, Y, Z), Z<Ref), List),  length(List, Count);
    Op=('<='), findall(Z, (pay(X, Y, Z), Z=<Ref), List),  length(List, Count)
    ).

list(Op, Ref, List) :- (
    Op=('=='), findall(Z, (pay(X, Y, Z), Z=:=Ref), List);
    Op=('!='), findall(Z, (pay(X, Y, Z), Z=\=Ref), List);
    Op=('>'), findall(Z, (pay(X, Y, Z), Z>Ref), List);
    Op=('>='), findall(Z, (pay(X, Y, Z), Z>=Ref), List);
    Op=('<'), findall(Z, (pay(X, Y, Z), Z<Ref), List);
    Op=('<='), findall(Z, (pay(X, Y, Z), Z=<Ref), List)
    ).

min(Op, Ref, Min) :- (
    Op=('=='), findall(Z, (pay(X, Y, Z), Z=:=Ref), List),  length(List, Count);
    Op=('!='), findall(Z, (pay(X, Y, Z), Z=\=Ref), List),  length(List, Count);
    Op=('>'), findall(Z, (pay(X, Y, Z), Z>Ref), List),  length(List, Count);
    Op=('>='), findall(Z, (pay(X, Y, Z), Z>=Ref), List),  length(List, Count);
    Op=('<'), findall(Z, (pay(X, Y, Z), Z<Ref), List),  length(List, Count);
    Op=('<='), findall(Z, (pay(X, Y, Z), Z=<Ref), List),  length(List, Count)
    ).

max(Op, Ref, Max) :- (
    Op=('=='), findall(Z, (pay(X, Y, Z), Z=:=Ref), List),  length(List, Count);
    Op=('!='), findall(Z, (pay(X, Y, Z), Z=\=Ref), List),  length(List, Count);
    Op=('>'), findall(Z, (pay(X, Y, Z), Z>Ref), List),  length(List, Count);
    Op=('>='), findall(Z, (pay(X, Y, Z), Z>=Ref), List),  length(List, Count);
    Op=('<'), findall(Z, (pay(X, Y, Z), Z<Ref), List),  length(List, Count);
    Op=('<='), findall(Z, (pay(X, Y, Z), Z=<Ref), List),  length(List, Count)
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