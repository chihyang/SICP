(load "Sect01_33_fixed_point.scm")
(load "Sect01_34_deriv.scm")
(define (newton-transform g)
  (lambda (x) (- x (/ (g x) ((deriv g) x)))))
(define (newton-method g guess)
  (fixed-point (newton-transform g) guess))