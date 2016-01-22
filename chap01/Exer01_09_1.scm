(define (+ a b)
    (if (= a 0)
        b
        (1+ (+ (-1+ a) b))))