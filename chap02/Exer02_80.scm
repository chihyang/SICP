(define (=zero? n) (apply-generic '=zero? n))
;; scheme number
(put '=zero? '(scheme-number)
     (lambda (n) (eq? n 0)))
;; rational number
(define (=zero-rat? n)
  (eq? (numer n) 0))
(put '=zero? '(rational)
     (lambda (n) (=zero-rat? n)))
;; complex number
(define (=zero-complex? n)
  (eq? (magnitude n) 0))
(put '=zero? '(complex)
     (lambda (n) (=zero-complex? n)))
