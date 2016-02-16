(define (same-parity . items)
  (define (same-even-odd x y)
    (= (remainder x 2) (remainder y 2)))
  (define (iter key lst)
    (cond ((null? lst) (cons key '()))
          ((same-even-odd key (car lst))
           (cons key (iter (car lst) (cdr lst))))
          (else (iter key (cdr lst)))))
  (iter (car items) (cdr items)))
