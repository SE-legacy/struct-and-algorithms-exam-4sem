/ Динамическое программирование: --- это метод решения задач, которые можно разбить на пересекающиеся подзадачи, решения которых можно запомнить (мемоизация) и использовать повторно.

*Основные шаги проектирования алгоритма ДП:*
1. Определить подпроблемы. Разбить задачу на подзадачи и понять, как решения подзадач связаны между собой (рекуррентное соотношение). 
2. Реализовать рекурсивное решение, сохраняя результаты подзадач, чтобы не вычислять их повторно.
3. Перейти от рекурсии к итеративному решению, заполняя таблицу значений от простых подзадач к более сложным.
4. При необходимости, используя таблицу, восстановить оптимальное решение задачи.

*Примеры задач ДП:*
- *Задача о рюкзаке.* Определить максимальную стоимость предметов, которые можно положить в рюкзак с ограниченным весом.
- *Числа Фибоначчи.* Вычисление n-го числа Фибоначчи с запоминанием промежуточных результатов.
- *Поиск кратчайшего пути в графе.* Например, алгоритм Флойда-Уоршелла.
- *Задача о размене монет.* Найти минимальное количество монет для заданной суммы.

== Задача о рюкзаке
Есть рюкзак с вместимостью $W=5$ кг и набор предметов:

#table(
  rows: (auto, auto, auto, auto),
  columns: (1fr, 1fr, 1fr),
  inset: 1em,
  table.header([*Предмет*], [*Вес $w_i$*], [*Стоимость*]),
  [1], [2], [3],
  [2], [3], [4], 
  [3], [4], [5],
)

Нужно выбрать подмножество предметов, чтобы суммарный вес не превышал 5 кг, а суммарная стоимость была максимальной.

Определяем таблицу `dp[i][w]` — максимальная стоимость при рассмотрении первых ii предметов и вместимости рюкзака $w$. Для `i=0` (нет предметов) и любого $w$, `dp[w]=0`.

Для каждого предмета `i=1..3` и веса $w$`=0..5`:
  - Если вес предмета $w_i$ больше текущей вместимости $w$, то `dp[i][w]=dp[i−1][w]` (предмет не берём).
  - Иначе `dp[i][w]=max⁡(dp[i−1][w],dp[i−1][w−wi]+vi)` (максимум между не брать и взять предмет).

Получим следующую таблицу:

#table(
  rows: (auto, auto, auto, auto, auto),
  columns: (4fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  inset: 1em,
  table.header([*`i` \\ $w$*], [*0*], [*1*], [*2*], [*3*], [*4*], [*5*]), 
  [0], [0], [0], [0], [0], [0], [0],
  [1 (вес=2, стоимость=3)], [0], [0], [3], [3], [3], [3],
  [2 (вес=3, стоимость=4)], [0], [0], [3], [4], [4], [7],
  [3 (вес=4, стоимость=5)], [0], [0], [3], [4], [5], [7],
)

Значит, максимальная стоимость при заданных условиях равна $7$.