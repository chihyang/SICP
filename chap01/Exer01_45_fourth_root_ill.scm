;;; Warning: indefinite loop
(load "Exer01_43_repeated.scm")
(load "Sect01_17_cube.scm")
(load "Sect01_33_fixed_point.scm")
(load "Sect01_34_average_damp.scm")
(define (fourth-root x)
  (fixed-point ((repeated average-damp 1) (lambda (y) (/ x (cube y))))
               1.0))
