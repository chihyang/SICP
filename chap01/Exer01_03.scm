(define (square x)
        (* x x))
(define (sum-of-squares x y)
        (+ (square x) (square y)))
(define (sum-of-larger-pair x y z)
        (cond ((and (< x y) (< x z)) (sum-of-squares y z))
              ((< y z) (sum-of-squares x z))
              (else (sum-of-squares x y))))
