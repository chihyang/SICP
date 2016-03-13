(load "Exer02_56.scm")
(load "Exer02_57.scm")
(define (deriv exp var)
  (cond ((number? exp) 0)
        ((variable? exp) (if (same-variable? exp var) 1 0))
        ((sum? exp) (make-sum (list (deriv (addend exp) var)
                                    (deriv (augend exp) var))))
        ((product? exp)
         (make-sum
          (list
           (make-product (list (multiplier exp)
                               (deriv (multiplicand exp) var)))
           (make-product (list (deriv (multiplier exp) var)
                               (multiplicand exp))))))
        ((exponentiation? exp)
         (make-product
           (exponent exp)
           (make-product
            (make-exponentiation (base exp) (make-sum (exponent exp) -1))
            (deriv (base exp) var))))
        (else
         (error "unknown expression type: DERIV" exp))))
