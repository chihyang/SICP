(load "Exer02_03_make_rectangle.scm")
(define (perimeter-rectangle rect)
  (* 2 (+ (width-of-rectangle rect)
          (length-of-rectangle rect))))
(define (area-rectangle rect)
  (* (width-of-rectangle rect)
     (length-of-rectangle rect)))
