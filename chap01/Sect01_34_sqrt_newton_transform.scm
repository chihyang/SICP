(load "Sect01_17_square.scm")
(load "Sect01_34_average_damp.scm")
(load "Sect01_34_newton.scm")
(define (sqrt x)
  (fixed-point-of-transform
   (lambda (y) (- (square y) x)) newton-transform 1.0))
