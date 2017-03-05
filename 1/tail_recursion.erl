-module(tail_recursion).
-export([fibonacci/1, perfect/1]).

fibonacci(N) ->
    fibonacci(N, 0, 1).

fibonacci(0, X, _) ->
    X;
fibonacci(N, X, Y) ->
    fibonacci(N-1, Y, X+Y).


perfect(N) ->
     Divisors = divisors(N, 1, []),
     Sum = lists:foldr(fun (X,Y) -> X+Y end, 0, Divisors),
     Sum == N.


divisors(N, N, Divisors) ->
    Divisors;
divisors(N, X, Divisors) when (N rem X) == 0 ->
    divisors(N, X+1, [X | Divisors]);
divisors(N, X, Divisors) ->
    divisors(N, X+1, Divisors).
