(load "Exer02_73_b.scm")
(define (deriv exp var)
  (cond ((number? exp) 0)
        ((variable? exp) (if (same-variable? exp var) 1 0))
        (else ((get (operator exp) 'deriv)
               (operands exp) var))))
(define (operator exp) (car exp))
(define (operands exp) (cdr exp))
(define (install-add-package)
  (define (addend s) (cadr s))
  (define (augend s) (caddr s))
  (define (make-sum a1 a2)
    (cond ((=number? a1 0) a2)
          ((=number? a2 0) a1)
          ((and (number? a1) (number? a2))
           (+ a1 a2))
          (else (list '+ a1 a2))))
  (put '+ 'addend addend)
  (put '+ 'augend augend)
  (put '+ 'make-sum make-sum)
  (put '+ 'deriv
       (lambda (exp var)
         (make-sum (deriv (addend exp) var)
                   (deriv (augend exp) var)))))
(define (install-multiply-package)
  (define (multiplier p) (cadr p))
  (define (multiplicand p) (caddr p))
  (define (make-product m1 m2)
  (cond ((or (=number? m1 0) (=number? m2 0)) 0)
        ((=number? m1 1) m2)
        ((=number? m2 1) m1)
        ((and (number? m1) (number? m2)) (* m1 m2))
        (else (list '* m1 m2))))
  (put '* 'multiplier multiplier)
  (put '* 'multiplicand multiplicand)
  (put '* 'make-product make-product)
  (put '* 'deriv
       (lambda (exp var)
         (make-sum (make-product (multiplier exp)
                                 (deriv (multiplicand exp) var))
                   (make-product (multiplicand exp)
                                 (deriv (multiplier exp) var))))))