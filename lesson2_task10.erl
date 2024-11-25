-module(lesson2_task10).
-export([encode/1]).

% Основна функція
encode(List) ->
    Packed = pack(List),
    lists:map(fun(Group) -> {length(Group), hd(Group)} end, Packed).

% Допоміжна функція pack (із попереднього завдання)
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
