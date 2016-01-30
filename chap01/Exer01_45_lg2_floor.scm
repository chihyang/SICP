(define (lg n)
  (if (or (= (/ n 2) 1) (> (/ n 2) 1))
      (+ 1 (lg (/ n 2)))
      0))
