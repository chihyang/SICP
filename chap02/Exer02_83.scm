;;; install int package
(define (install-int-package)
  (define tag (lambda (x) (attach-tag 'int x)))
  (put 'make 'int (lambda (x) (tag x)))
  (define make-int ((get 'make 'int) x))
  (put 'raise 'int raise)
  (define raise-int-to-rat
    (lambda (n)
      (make-rational (contents n) 1))))
;;; install real package
(define (install-real-package)
  (define tag
    (lambda (x) (attach-tag 'real x)))
  (put 'make 'real (lambda (x) (tag x)))
  (define make-real
    (lambda (n) ((get 'make 'real) x)))
  (put 'raise 'real raise-real-to-complex)
  (define raise-real-to-complex
    (lambda (n)
      (make-complex-from-real-imag
       (contents n) 0))))
;;; this should be inserted to install-rational-package
(define (install-rational-package)
  (put 'raise 'rational raise-rat-to-real)
  (define raise-rat-to-real
    (lambda (n)
      (make-real
       (/ (numer (contents n))
          (denom (contents n)))))))
(define raise
  (lambda (n)
    (apply-generic 'raise n)))
