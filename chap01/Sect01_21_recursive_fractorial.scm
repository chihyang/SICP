(define (fractorial n)
    (if (= n 1)
        1
        (* n (fractorial (- n 1)))))