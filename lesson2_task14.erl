-module(lesson2_task14).
-export([duplicate/1]).

% Основна функція
duplicate(List) ->
    lists:flatmap(fun duplicate_element/1, List).

% Допоміжна функція для дублювання одного елемента
duplicate_element(Element) ->
    [Element, Element].
