(define (make-interval a b) (cons a b))
(define (upper-bound x) (max (acr x) (adr x)))
(define (lower-bound x) (min (acr x) (adr x)))
