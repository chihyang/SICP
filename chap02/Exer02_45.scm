(define (split op1 split2)
  (lambda (painter n)
    (if (= n 0)
        painter
        (let ((smaller painter (- n 1)))
          (op1 painter (op2 smaller smaller))))))
(define right-split (split beside below))
(define up-split (split below beside))
