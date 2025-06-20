#import "../conf.typ": definition

#definition[*Марковская подстановка* --- операция над словами, задаваемая парой слов $(P, Q)$, которая заменяет в слове $R$ первое вхождение $P$ на $Q$, обозначается $P -> Q$.]

Пустое слово обозначается как $and$.

#definition[*Схема нормального алгоритма Маркова* --- это упорядоченный конечный список подстановок в алфавите $A$]

*Нормальный алгоритм* перерабатывает слово $V$ в слово $W$.

/ Принцип нормализации Маркова: --- функция, заданная в некотором алфавите, нормально вычислима $=>$ $exists$ алгоритм нахождения её значений

Класс нормально вычислимых функций совпадает с классами частично рекурсивных функций и вычислимых по Тьюрингу.

*Пример*. Алгоритм $cases(
  a -> and,
  b -> b
)$ удалит из исходной строки первое вхождение буквы $a$.
