-module(lesson2_task12).
-export([decode_modified/1]).

% Основна функція
decode_modified(EncodedList) ->
    lists:flatmap(fun decode_element/1, EncodedList).

% Допоміжна функція для декодування окремого елемента
decode_element({Count, Element}) when is_integer(Count) ->
    lists:duplicate(Count, Element);
decode_element(Element) ->
    [Element].
