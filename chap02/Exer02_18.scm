(define (reverse items)
  (if (null? items)
      items
      (append (reverse (cdr items)) (list (car items)))))
