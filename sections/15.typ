#import "../conf.typ": theorem, consequence, equ

#theorem(name: "Вторая основная теорема")[Пусть дано реккурентное соотношение
#equ($ t(n) = cases(c comma & "если" 0 lt.eq.slant n lt.eq.slant k - 1 comma, a t (n - k) + b n^tau comma space & "если" n gt.eq.slant k comma) $, id: <t15:eq4>)
где $a > 0$, $k gt.eq.slant 1$ --- целые константы, $b, c, tau gt.eq.slant 0$ --- вещественные константы. \ Тогда при $n = k m, space m in ZZ_+$ верны неравенства:
$ c + b k ^ (tau - 1) n lt.eq.slant t(n) lt.eq.slant c + b/k n^(tau + 1), space "если" a = 1, $
$ a^(n slash k) c + b k^tau (a^(n slash k) - 1)/(a-1) lt.eq.slant t(n) lt.eq.slant a^(n slash k) c + b n^tau (a^(n slash k) - 1)/(a-1), space "если" a eq.not 1. $
][]

#consequence([В предположениях второй теоремы при $tau = 0$ решением рекуррентного соотношения (@t15:eq4) является функция
$ t(n) = cases(c + b/k n comma & space "если" a = 1 comma, a^(n slash k)c + b (a^(n slash k) - 1)/(a-1) comma & space "если" a eq.not 1.) $])[]

#consequence([При $tau = 0, space forall c gt.eq.slant 0, space n -> oo$ для решения реккурентного соотношения (@t15:eq4) верны асимптотические оценки: $ t(n) = cases(O(n) comma & space "если" a = 1 comma space b > 0 comma, O(a^(n slash k)) comma & space "если" a eq.not 1 comma space b > 0.) $
В частности, $tau = b = 0, space a = 1 => space t(n) eq.triple O(1).$])[]

#consequence([При $tau, c gt.eq.slant 0, space b > 0, space a = 1, space n -> oo$ для решения реккурентного соотношения (@t15:eq4) верны асимптотическая оценка: $ t(n) = O(n^(tau + 1)) $])[]