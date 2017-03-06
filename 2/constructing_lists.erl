-module(constructing_lists).
-export([double/1, double_tail/1, evens/1, evens_tail/1, median/1]).


double([]) ->
    [];
double([X | Xs]) ->
    [X * X | double(Xs)].


double_tail(Xs) ->
    double_tail(Xs, []).

double_tail([], Acc) ->
    lists:reverse(Acc);
double_tail([X | Xs], Acc) ->
    double_tail(Xs, [X * X | Acc]).


evens([]) ->
    [];
evens([X | Xs]) when X rem 2 == 0 ->
    [X | evens(Xs)];
evens([_X | Xs]) ->
    evens(Xs).


evens_tail(Xs) ->
    evens_tail(Xs, []).

evens_tail([], Acc) ->
    lists:reverse(Acc);
evens_tail([X | Xs], Acc) when X rem 2 == 0 ->
    evens_tail(Xs, [X | Acc]);
evens_tail([_X | Xs], Acc) ->
    evens_tail(Xs, Acc).


median([X]) ->
    X;
median([X, Y]) ->
    (X + Y) / 2;
median(Xs) ->
    Tail = tl(Xs),
    MiddleElements = lists:droplast(Tail),
    median(MiddleElements).
