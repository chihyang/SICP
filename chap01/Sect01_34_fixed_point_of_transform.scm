(load "Sect01_33_fixed_point.scm")
(define (fixed-point-of-transform g transform guess)
  (fixed-point (transform g) guess))
