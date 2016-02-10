(load "Exer02_07.scm")
(define (div-interval x y)
  (define (span-zero a)
    (or (= (upper-bound a) 0)
        (= (lower-bound a) 0)))
  (if (span-zero y)
      (error "divide by internal that spans zero: DIV-INTERVAL" m)
      (else (mul-interval
             x
             (make-interval (/ 1.0 (upper-bound y))
                            (/ 1.0 (lower-bound y)))))))
