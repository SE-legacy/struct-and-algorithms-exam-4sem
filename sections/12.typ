#import "../conf.typ": theorem, lets

== Правило суммы и произведения

#theorem(name: "Правило сумм")[
  $T_1 (n) + T_2 (n) = O(f(n)) + O(g(n)) = O(max(f(n), g(n)))$
][
#lets $f(n) < g(n)$, тогда $cases(
T_1 (n) <= O(f(n)) = c_1 dot f(n),
T_2 (n) <= O(g(n)) = c_2 dot g(n),
f(n) < g(n)
) => exists c_1, c_2$ такие, что $T_1 (n) <= c_1 dot f(n) <= T_2 (n) <= c_2 dot g(n) => $ для $T_1$ верно, что $T_1 = O(f(n)) = O(g(n))$
]

#theorem(name: "Правило произведений")[$T_1 (n) dot T_2 (n) = O(f(n) dot g(n))$][
Очевидно, что $T_1 (n) dot T_2 (n) = O(f(n)) dot O(g(n)) <= c_1 dot f(n) dot c_2 g(n) = c dot f(n) dot g(n) = O(f(n) dot g(n))$
]

== Оценка основных алгоритмических конструкций

- Элементарные операции выполняются за O(1)
- Последовательность операций $a, b, c$ выполняется за $O(max(a, b, c))$
- Условие выполняется за $O(max("then", "else"))$
- Цикл из $n$ итераций над $a$ выполняется за $O(n dot a)$
