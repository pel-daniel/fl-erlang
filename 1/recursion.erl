-module(recursion).
-export([fibonacci/1, pieces/1]).


fibonacci(0) ->
    0;
fibonacci(1) ->
    1;
fibonacci(X) when X>0 ->
    fibonacci(X-1) + fibonacci(X-2).


pieces(0) ->
    1;
pieces(N) when N>0 ->
    N + pieces(N-1).
