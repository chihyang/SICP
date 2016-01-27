(load "Exer01_43_repeated.scm")
(load "Exer01_44_smooth.scm")
(define (n-fold-smooth f n)
  (lambda (x) (((repeated smooth n) f) x)))
