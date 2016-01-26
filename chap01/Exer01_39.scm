(load "Sect01_17_square.scm")
(load "Exer01_37_cont_frac.scm")
(define (tan-cf x k)
  ( /
    (cont-frac (lambda (i) (- (square x)))
             (lambda (i) (- (* 2 i) 1))
             k)
    (- x)))
  
