(load "Sect01_34_average_damp.scm")
(load "Sect01_34_fixed_point_of_transform.scm")
(define (sqrt x)
  (fixed-point-of-transform
   (lambda (y) (/ x y)) average-damp 1.0))
