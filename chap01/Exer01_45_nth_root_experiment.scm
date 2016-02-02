(load "Exer01_43_repeated.scm")
(load "Sect01_17_cube.scm")
(load "Sect01_24_fast_expt.scm")
(load "Sect01_33_fixed_point.scm")
(load "Sect01_34_average_damp.scm")
(define (nth-root-experiment x n t)
  (fixed-point ((repeated average-damp t) (lambda (y) (/ x (fast-expt y (- n 1)))))
               1.0))