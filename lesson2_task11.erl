-module(lesson2_task11).
-export([encode_modified/1]).

% Основна функція
encode_modified(List) ->
    Packed = pack(List),
    lists:map(fun(Group) -> 
        case length(Group) of
            1 -> hd(Group);           % Якщо група з 1 елемента, повертаємо його
            N -> {N, hd(Group)}       % Інакше, повертаємо {Count, Element}
        end
    end, Packed).

% Допоміжна функція pack (із попередніх завдань)
pack([]) -> 
    [];
pack([H | T]) -> 
    pack(T, H, [H], []).

pack([], _, CurrentGroup, Acc) ->
    lists:reverse([lists:reverse(CurrentGroup) | Acc]);
pack([H | T], H, CurrentGroup, Acc) ->
    pack(T, H, [H | CurrentGroup], Acc);
pack([H | T], Previus, CurrentGroup, Acc) ->
    pack(T, H, [H], [lists:reverse(CurrentGroup) | Acc]).
