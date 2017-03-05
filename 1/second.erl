-module(second).
-export([hypotenuse/2, area/2, perimeter/2]).


hypotenuse(C1, C2) ->
    S = first:square(C1) + first:square(C2),
    math:sqrt(S).


perimeter(C1, C2) ->
    C1 + C2 + hypotenuse(C1, C2).


area(C1, C2) ->
    first:area(C1, C2, hypotenuse(C1, C2)).
