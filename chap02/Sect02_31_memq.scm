(define (memq item x)
  (cond ((null? item) false)
        ((eq? item (car x)) x)
        (else (memq item (cdr x)))))
