-module(lesson2_task02).
-export([but_last/1]).

but_last([X, Y]) -> 
    [X, Y]; % Якщо в списку тільки два елементи — вони і є результатом
but_last([_ | Tail]) -> 
    but_last(Tail). % Рекурсія: рухаємося до кінця списку
