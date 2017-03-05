-module(pattern_matching).
-export([perimeter/1, bits/1, bits_tail/1]).


perimeter({triangle, {X, Y, Z}}) ->
    X + Y + Z;
perimeter({square, {X, Y}}) ->
    (X + Y) * 2;
perimeter({circle, R}) ->
    math:pi() * R * 2.


bits(0) ->
    0;
bits(N) when N>0 ->
    N rem 2 + bits(N div 2).


bits_tail(N) when N>0 ->
    bits_tail(N, 0).

bits_tail(0, Acc) ->
    Acc;
bits_tail(N, Acc) ->
    bits_tail(N div 2, Acc + N rem 2).
