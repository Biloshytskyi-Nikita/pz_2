-module(lesson2_task13).
-export([decode/1]).

% Основна функція
decode(EncodedList) ->
    lists:flatmap(fun decode_element/1, EncodedList).

% Допоміжна функція для декодування одного кортежу
decode_element({Count, Element}) ->
    lists:duplicate(Count, Element).
