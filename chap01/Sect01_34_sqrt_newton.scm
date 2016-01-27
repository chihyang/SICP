(load "Sect01_34_newton.scm")
(define (sqrt x)
  (newton-method
   (lambda (y) (- (square y) x)) 1.0))
