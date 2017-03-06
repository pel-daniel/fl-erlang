-module(lists_recursion).
-export([product/1, product_tail/1, maximum/1, maximum_tail/1]).


product([]) ->
    1;
product([X | Xs]) ->
    X * product(Xs).


product_tail(Xs) ->
    product_tail(Xs, 1).

product_tail([], Acc) ->
    Acc;
product_tail([X | Xs], Acc) ->
    product_tail(Xs, X * Acc).


maximum([X]) ->
    X;
maximum([X | Xs]) ->
    max(X, maximum(Xs)).


maximum_tail([X | Xs]) ->
    maximum_tail(Xs, X).

maximum_tail([], Y) ->
    Y;
maximum_tail([X | Xs], Y) ->
    maximum_tail(Xs, max(X, Y)).
