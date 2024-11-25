-module(lesson2_task09).
-export([pack/1]).

pack([]) -> 
    [];
pack([H | T]) -> 
    pack(T, H, [H], []).

pack([], _, CurrentGroup, Acc) ->
    lists:reverse([lists:reverse(CurrentGroup) | Acc]);
pack([H | T], H, CurrentGroup, Acc) ->
    pack(T, H, [H | CurrentGroup], Acc);
pack([H | T], Prev, CurrentGroup, Acc) ->
    pack(T, H, [H], [lists:reverse(CurrentGroup) | Acc]).
