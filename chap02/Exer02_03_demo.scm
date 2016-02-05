(load "Exer02_03_quantity_rectangle.scm")
(define p1 (make-point 0 0))
;Value: p1

(define p2 (make-point 0 2))
;Value: p2

(define p3 (make-point 5 2))
;Value: p3

(define p4 (make-point 5 0))
;Value: p4

(define l1 (make-segment p2 p3))
;Value: l1

(define l2 (make-segment p1 p2))
;Value: l2

(define l3 (make-segment p4 p3))
;Value: l3

(define l4 (make-segment p1 p4))
;Value: l4

(define rect (make-rectangle l1 l2 l4 l3))
;Value: rect

(area-rectangle rect)
;Value: 39883314907077944359457/3988312816979886047120

(/ (area-rectangle rect) 1.0)
;Value: 10.000046821121526

(perimeter-rectangle rect)
;Value: 1642251913622922420077/117303318146467236680

(/ (perimeter-rectangle rect) 1.0)
;Value: 14.000046542352488

