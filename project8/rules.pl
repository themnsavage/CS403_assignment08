pay(First_name, Last_name, Pay):- salaried(First_name, Last_name, Salary),
    Pay is (Salary).

pay(First_name, Last_name, Pay):- hourly(First_name, Last_name, Hours, Rate),
    (
    Hours =< 40,
    Pay is (Hours*Rate);
    
    Hours =< 50,
    Over_time_hours is (Hours - 40),
    Over_time_rate is (1.5 * Rate),
    Pay is ((40 * Rate) + (Over_time_rate * Over_time_hours));

    Hours > 50,
    First_over_time_hours is (10),
    First_over_time_rate is (1.5 * Hours),
    Second_over_time_hours is (Hours - 50),
    Second_over_time_rate is (2 * Rate),
    Pay is ((Rate * 40) + (First_over_time_hours * First_over_time_rate) + (Second_over_time_hours * Second_over_time_rate))
    ).
pay(First_name, Last_name, Pay):- commission(First_name, Last_name, Min_salary, Amount, Rate),
    (
    (Amount * Rate) > Min_salary,
    Pay is (Amount*Rate);
    Pay is (Min_salary)
    ).
