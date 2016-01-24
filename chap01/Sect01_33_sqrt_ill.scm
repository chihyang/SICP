(load "Sect01_33_fixed_point.scm")
(define (sqrt-ill x)
  (fixed-point (lambda (y) (/ x y))
               1.0))
