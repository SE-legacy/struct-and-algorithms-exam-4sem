#import "../conf.typ": theorem, consequence

#theorem(name: "Вторая основная теорема")[Пусть дано реккурентное соотношение
$ t(n) = cases(c comma & "если" 0 lt.eq.slant n lt.eq.slant k - 1 comma, a t (n - k) + b n^tau comma space & "если" n gt.eq.slant k comma) $<t15:eq4> 
где $a > 0$, $k gt.eq.slant 1$ --- целые константы, $b, c, tau gt.eq.slant 0$ --- вещественные константы. \ Тогда при $n = k m, space m in ZZ_+$ верны неравенства:
$ c + b k ^ (tau - 1) n lt.eq.slant t(n) lt.eq.slant c + b/k n^(tau + 1), space "если" a = 1, $
$ a^(n slash k) c + b k^tau (a^(n slash k) - 1)/(a-1) lt.eq.slant t(n) lt.eq.slant a^(n slash k) c + b n^tau (a^(n slash k) - 1)/(a-1), space "если" a eq.not 1. $
][]
