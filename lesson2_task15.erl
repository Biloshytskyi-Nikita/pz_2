-module(lesson2_task15).
-export([replicate/2]).

% Основна функція
replicate(List, N) ->
    lists:flatmap(fun(Element) -> replicate_element(Element, N) end, List).

% Допоміжна функція для реплікації одного елемента
replicate_element(Element, N) ->
    lists:duplicate(N, Element).
