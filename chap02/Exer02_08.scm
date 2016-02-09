(load "Sect02_14_interval_arithmetic.scm")
(define (sub-interval x y)
  (add-interval
   x
   (make-interval (lower-bound (- y))
                  (upper-bound (- y)))))
