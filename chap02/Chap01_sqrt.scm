; from section 1.1.7
(load "Chap01_average.scm")
(define (improve guess x)
    (average guess (/ x guess)))
(define (good-enough? guess x)
    (< (abs (- (square guess) x)) .001))
(define (sqrt-iter guess x)
    (if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x) x)))
(define (sqrt x)
    (sqrt-iter 1 x))
