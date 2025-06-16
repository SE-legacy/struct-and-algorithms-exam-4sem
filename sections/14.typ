#import "../conf.typ": theorem, consequence

#theorem(name: "Первая основная теорема")[Пусть дано рекурсивное соотношение
$
t(n) = cases(
  c\, "если" n = 1,
  a t (n/k) + b n^tau\, "если" n > 1,
)
$
где $a > 0$, $k > 1$ --- целые константы, $b >= 0, c >= 0, tau >= 0 in RR$.

Тогда при $n = k^m, m in Z^+$ решением соотношения является функция

$
t(k^m) = cases(
  a^m c + b k^(m tau) m\, "если" a = k^tau,
  a^m c + b k^(m tau) frac((a / k^tau)^m - 1, (a/(k^tau)) -1)\, "если" a != k^tau
)
$
][]

#consequence[
  В предположениях первой основной теоремы при большх значениях $n$ и $forall b > 0, c >= 0$ справедливы оценки
$
t(n) = cases(
  O(n^tau log_k n)\, "если" a = k^tau,
  O(n^tau)\, "если" a < k^tau,
  O(n^(log_k a))\, "если" a > k^tau
)
$

При $b = 0, c > 0$:
$
t(n) = O(a^(log_k n)) = O(n^(log_k a))
$
][]
