(load "Exer02_02_make_point.scm")
(define (add-point p1 p2)
  (make-point (+ (x-point p1) (x-point p2))
              (+ (y-point p1) (y-point p2))))
(define (sub-point p1 p2)
  (make-point (- (x-point p1) (x-point p2))
              (- (y-point p1) (y-point p2))))
