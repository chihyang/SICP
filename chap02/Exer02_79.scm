(define (equ? n1 n2) (apply-generic 'equ? n1 n2))
;; scheme number
(put 'equ? '(scheme-number scheme-number)
     (lambda (n1 n2) (eq? n1 n2)))
;; rational number
(define (eq-rat? n1 n2)
  (and (eq? (numer n1) (numer n2))
       (eq? (numer n1) (numer n2))))
(put 'equ? '(rational rational)
     (lambda (n1 n2) (eq-rat? n1 n2)))
;; complex number
(define (eq-complex? n1 n2)
  (and (eq? (real-part n1) (real-part n2))
       (eq? (imag-part n1) (imag-part n2))))
(put 'equ? '(complex complex)
     (lambda (n1 n2) (eq-complex? n1 n2)))
