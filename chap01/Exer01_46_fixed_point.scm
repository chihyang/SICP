(load "Exer01_46_iterative_improve.scm")
(load "Sect01_17_abs.scm")
(define tolerance 0.00001)
(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2))
       tolerance))
  ((iterative-improve close-enough? f) first-guess))