== Порядок роста
#table(columns: 2,
	table.header([*Вид f(n)*],[*Характеристика класса алгоритмов*]),
	[$1$],[Большинство инструкций большинства функций запускается один или несколько раз. Если все инструкции программы обладают таким свойством, то время выполнения программы постоянно.],
	[$log N$],[Когда время выполнения программы является логарифмичесим, программа становится медленнее с ростом $N$. Такое время выполнения обычно присуще программам, которые сводят большую задачу к наборе меньших подзадач, уменьшая на каждом шаге размер задачи на некоторый постоянный фактор.],
	[$N$],[Когда время пвыолнения программы является линейным, это обычно значит, что каждый входной элемент подвергается небольшой обработке.],
	[$N log N$],[Возникает тогда, когда алгоритм решает задачу, разбивая её на меньшие подзадачи, решая их независимо и затемм объединяя решения],
	[$N^2$],[Когда время выполнения алгоритма является квадратичным, он полезен для практического использования при решении относительно небольших задач квадратичное время выполения обычно появляется в алгоритмах, которые обрабатывают все пары],
	[$N^3$],[Похожий алгоритм, который обрабатывает тройки элементов данных (возможно, в цикле тройного уровня вложенности)],
	[$2^n$],[Лишь несколько алгоритмов с экспоненциальным временем выполнения имеет практическое примеение, хотя такие алгоритми возникюат естественным образом при попытках прямого решения задачи, например полного перебора. Время выполнения увеличивается экспоненциально с ростом $N$],
	[$N!$],[],
)

== Основные классы эффективности

=== Класс 0
Это класс быстрых алгоритмов с постоянным временем выполенния из функция трудомекости $O(1)$. Промежуточное состояние занимают алгоритмы со сложностью $O(log n)$

=== Класс P
/*
 HACK:Задачи со сложностью $O(0)$:
 - Листание Сафрончиком слайдов
*/

Задачи со сложностью $O(1)$:
- вставка и удаление элемента в односвязном и двусявязном списке
- добавление вершины или ребра в графе

Задачи со соложностью $O (log n)$:
- Двоичный поиск в линейном упорядоченном массиве;

Задачи с полиномиальной сложностью:
- Задача сортировки
- Задача поиска эйлерова цикла на графе


=== Класс E

Класс #[*э*]кспоненциальных алгоритмов со степенью трудоёмкости $O(2^n)$
- Задача коммивояжёра

=== Класс F

Класс надэкспоненциальных алгоритмов с #[*ф*]акториаьлной трудоёмкостью

