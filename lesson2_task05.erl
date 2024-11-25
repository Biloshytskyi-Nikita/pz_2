-module(lesson2_task05).
-export([reverse/1]).

reverse(List) -> 
    reverse(List, []). % Викликаємо допоміжну функцію з початковим акумулятором

reverse([], Acc) -> 
    Acc; % Якщо список порожній, повертаємо акумулятор
reverse([Head | Tail], Acc) -> 
    reverse(Tail, [Head | Acc]). % Додаємо голову до акумулятора і обробляємо хвіст
