(load "Sect02_23.scm")
(define (count-leaves t)
  (accumulate +
              0
              (map (lambda (x) (if (not (pair? x))
                                   1
                                   (count-leaves x)))
                   t)))
