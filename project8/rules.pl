pay(First_name, Last_name, Pay):- salaried(First_name, Last_name, Salary),
    Pay is (Salary).

pay(First_name, Last_name, Pay):- hourly(First_name, Last_name, Hours, Rate),
    (
    Hours =< 40, Pay is (Hours * Rate);
    Hours =< 50, Hours > 40, Pay is ((40 * Rate) + ((Hours - 40) * (1.5 * Rate)));
    Hours > 50, Pay is ((Rate * 40) + (10 * (1.5 * Rate)) + ((Hours - 50) * (2 * Rate)))
    ).

pay(First_name, Last_name, Pay):- commission(First_name, Last_name, Min_salary, Amount, Rate),
    (
    (Amount * Rate) < Min_salary, Pay is (Min_salary);
    (Amount * Rate) >= Min_salary, Pay is (Amount * Rate)
    ).
