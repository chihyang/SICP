(load "Sect01_21_iterative_fractorial.scm")
(define (pascal n i)
    (cond ((< n 1) 0)
        ((or (< i 1) (> i n)) 0)
        (else (pascal-iter n i))))
(define (pascal-iter n i)
    (if (not (and (> i 1) (< i n)))
        1
        (/ (fact-iter 1 i (- n 1)) (fact-iter 1 1 (- n i)))))
