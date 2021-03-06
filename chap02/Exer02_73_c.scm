(define (install-exponent-package)
  (define (exponent e) (caddr e))
  (define (base e) (cadr e))
  (define (make-exponentiation b e)
    (cond ((= e 0) 1)
          ((= e 1) b)
          (else (list '** b e))))
  (put 'exponent '** exponent)
  (put 'base '** base)
  (put 'make-exponentiation '** make-exponentiation)
  (put 'deriv '**
       (lambda (exp var)
         (make-sum (make-product (exponent exp)
                                 (make-product
                                  (exponent exp)
                                  (make-product (make-exponentiation (base exp) var)
                                                (deriv (base exp) var))))))))
