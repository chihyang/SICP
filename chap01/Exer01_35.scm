(load "Sect01_33_fixed_point.scm")
(fixed-point (lambda (x) (+ 1 (/ 1 x)))
             1.0)
